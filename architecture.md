# architecture.md — Structural & Data-Flow Documentation

> Scope: derived exclusively from the directory tree and file imports under `lib/`, plus `pubspec.yaml`.

## Structural Pattern

The project is **feature-first with Clean Architecture layering inside each feature**. Top level of `lib/`:

```
lib/
├── main.dart                  # entry point, theme, root MultiBlocProvider, router wiring
├── core/                      # cross-cutting infrastructure
│   ├── injection_container.dart   # all get_it registrations + Dio setup
│   ├── error/                 # ServerException / CacheException / AuthenticationException; Failure hierarchy
│   ├── gen/                   # flutter_gen output (assets, fonts) + generated l10n delegates
│   ├── localization/          # LanguageBloc, context.lang extension, language helper
│   ├── resources/             # design tokens, ApiAgent, urls, helpers, common widgets/models/helpers
│   ├── route/                 # AppRouter (auto_route), generated app_router.gr.dart, AuthGuard
│   └── usecases/              # abstract UseCase<T, Params> base + NoParams
├── feature/                   # 21 feature modules
└── l10n/                      # app_en.arb, app_ar.arb
```

### Feature module layout

Each directory under `lib/feature/` follows the same three-layer convention (layers present only when the feature needs them):

```
feature/<name>/
├── data/
│   ├── datasources/       # abstract RemoteDataSource + Impl calling ApiAgent
│   ├── models/            # freezed/json_serializable DTOs with toEntity() mappers
│   └── repositories/      # RepositoryImpl implementing the domain interface
├── domain/
│   ├── entities/          # freezed domain objects
│   ├── repositories/      # abstract repository contracts
│   └── usecases/          # use case classes + params/ (freezed union parameter objects)
└── presentation/
    ├── bloc/              # bloc + event + state (freezed, `part of` files)
    ├── pages/             # @RoutePage screen widgets
    ├── widgets/           # feature-private widget classes
    └── helpers/           # static helper classes (menus, validation, dialogs)
```

Features present: `add_document`, `add_member`, `book_appointment`, `cart`, `doctor_detail`, `doctors`, `documents`, `edit_profile_details`, `home`, `lab`, `login`, `main_screen`, `medical_insurances`, `member_details`, `members`, `my_appointments`, `notification`, `profile`, `reports`, `set_password`, `speciality`.

**Presentation-only features:** `cart`, `doctor_detail`, `edit_profile_details`, `main_screen`, `medical_insurances`, `member_details`, and `members` contain only a `presentation/` layer (no `data/` or `domain/`); their blocs either hold pure UI state or reuse other features' use cases. Features with multiple blocs nest them in named subfolders (e.g. `login/presentation/bloc/otp_generation_bloc/`, `otp_verification_bloc/`, `login_with_password_bloc/`).

All generated code (`.freezed.dart`, `.g.dart`) is emitted into a `generated/` subfolder next to its source file and referenced with `part 'generated/<file>.freezed.dart'`.

### Navigation layer (`lib/core/route/`)

- `AppRouter` (`@AutoRouterConfig(replaceInRouteName: 'Screen,Route')`) extends `RootStackRouter` and declares 24 flat `AutoRoute` entries; `LoginRoute` is `initial: true`.
- The default route type is a custom 300 ms ease-in horizontal slide transition (`_slideTransition`).
- Screens are annotated `@RoutePage(name: '...')`; typed route arguments are generated into `app_router.gr.dart`. Route argument objects include domain entities (`Doctor`, `Member`, `Speciality`).
- `AuthGuard extends AutoRouteGuard` resolves `UserBloc` from the `get_it` locator and redirects: an authenticated user hitting `LoginRoute` is replaced with `MainRoute`; an unauthenticated user hitting anything else is replaced with `LoginRoute`.
- Startup routing: `MaterialApp.router` uses `_appRouter.config(deepLinkBuilder: ...)`, choosing the initial stack from the cached user — `MemberSelectionRoute` when the user has members, `MainRoute` when not, `LoginRoute` when no user is cached.

## Data Flow

The concrete path from user interaction to the network and back (as implemented in the `reports` feature; other data-backed features follow the identical shape):

1. **Screen → Event.** The screen (`reports_screen.dart`) reads the session from `UserBloc` state (`accessToken`, member id, mobile number) and dispatches `context.read<ReportsBloc>().add(GetReports(params: ReportsParams.getReports(...)))`. Initial fetches are dispatched from `initState`; re-fetches are triggered by a `BlocListener` on `UserBloc` when the selected member changes. Credentials always travel **inside the freezed params object**, not through the data layer's own state.
2. **BLoC → UseCase.** Handlers are registered in the bloc constructor via `on<Event>`. A handler first emits a loading state (`copyWith` raising `isFetching...` and resetting the success/failure flags), then awaits the injected use case, which returns `Future<Either<ErrorModel, T>>`.
3. **UseCase → Repository.** Use cases (e.g. `ReportsUseCase`) are thin classes holding the abstract domain repository and forwarding the params. An abstract `UseCase<T, Params>` base with `call()` exists in `lib/core/usecases/usecase.dart`; the feature use cases examined expose named methods returning `Either<ErrorModel, T>` directly.
4. **Repository → DataSource.** `RepositoryImpl` (data layer) calls the abstract `RemoteDataSource`, maps returned DTO models to domain entities via `model.toEntity()`, and wraps the result: `Right(entities)` on success, `Left(ErrorModel(message: ...))` on any caught exception (stripping the `'ServerException: '` prefix from the message).
5. **DataSource → Network.** `RemoteDataSourceImpl` unpacks the freezed params union with `params.maybeMap(...)` (throwing `ServerException` for a mismatched variant), builds the request envelope with `serviceRequest(type: 'PPxxxx', content: p.toJson())` (`lib/core/resources/api_helpers.dart`), and posts it to the single RPC endpoint `ConstantUrls.serviceUrl` through `ApiAgent` with a `Bearer` token. Responses are decoded with `decodeResponseData` and mapped into models via `Model.fromJson`. Binary downloads use `client.get<Uint8List>(responseType: ResponseType.bytes)`.
6. **ApiAgent (network boundary).** `ApiAgent` wraps `Dio.get`/`Dio.post`, sets content type (`application/json` or `multipart/form-data`) and the `Authorization` header, and converts every `DioException` into a `ServerException` with a human-readable message (timeout, no-connection, server `message` field extraction, status-code fallback). A `_CustomLogger` Dio interceptor logs request/response/error details via `dart:developer` in debug mode only.
7. **BLoC folds.** The handler calls `.fold(...)`: the left branch emits a failure state carrying the `ErrorModel`; the right branch emits a success state with the data. Every terminal emit sets exactly one of the `is...Success` / `is...Failed` flags.
8. **State → UI.** Screens subscribe with `BlocBuilder` (rendering: loading view → error view with retry → data/empty state) and use `BlocListener`/`BlocConsumer` for one-shot side effects (snack bars, dialogs, refetch triggers). Cross-feature session state (current user, selected member) is read from the globally provided `UserBloc`.

## Dependency Management

- **Service locator:** `get_it`, exposed as the top-level `final sl = GetIt.instance` in `lib/core/injection_container.dart`. There is no `injectable` code generation; every registration is written by hand in a single async `init()` function, organized by feature with `//! Features - <name>` banner comments.
- **Registration conventions:**
  - **BLoCs** → `registerFactory` (a new instance per resolution). `UserBloc` uses `registerFactoryParam<UserBloc, User?, void>` to accept the initial cached user.
  - **Use cases** → `registerLazySingleton`.
  - **Repositories** → `registerLazySingleton<AbstractRepository>(() => RepositoryImpl(remoteDataSource: sl()))`, bound to the domain interface.
  - **Data sources** → `registerLazySingleton<AbstractDataSource>(() => DataSourceImpl(client: sl()))`.
  - **Externals** → `SharedPreferences.getInstance()` is awaited inside `init()` and registered as a lazy singleton; `ApiAgent` and a configured `Dio` (20 s timeouts + `_CustomLogger` interceptor) are lazy singletons.
- **Initialization order (`main()`):** `WidgetsFlutterBinding.ensureInitialized()` → `FlutterNativeSplash.preserve` → `await di.init()` → date-formatting init for `ar`/`en` → cached user loaded via `sl<UserLocalDataSource>().getUser()` → system UI mode/overlay/orientation setup → `runApp(MyApp(initialUser: ...))`.
- **BLoC provisioning:** all 20 blocs are provided once, app-wide, in the root `MultiBlocProvider` in `MyApp.build`, each created by resolving from `sl`. `UserBloc` is created with `param1: initialUser` and immediately receives an `InitializeUser` event; `LanguageBloc` immediately receives `LoadLanguage`. No route-scoped `BlocProvider` exists.
- **Locale rebuild:** `MaterialApp.router` is wrapped in a `BlocBuilder<LanguageBloc, LanguageState>` so a language change rebuilds the app with the new `locale`.
- **Session persistence:** `UserLocalDataSourceImpl` persists the `User` entity (with access/refresh tokens) to `SharedPreferences` as JSON; `saveUser` preserves an existing non-empty refresh token when the incoming user object lacks one. The router's deep-link builder and `AuthGuard` both key off this session state.
