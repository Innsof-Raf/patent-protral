# architecture.md — Structural & Data-Flow Documentation

> Scope: derived exclusively from the directory tree and imports under `lib/`.

## Structural Pattern

The project uses a **feature-first architecture**. Top level of `lib/`:

```
lib/
├── main.dart          # entry point, root widget, global BLoC registration, theme
├── feature/           # one directory per screen/feature (24 features)
├── resources/         # cross-feature shared code
└── route/             # centralized navigation
```

### Feature module layout

Each directory under `lib/feature/` follows the same internal convention (folders present only when the feature needs them):

- `<feature>_screen.dart` — the screen widget, at feature root.
- `bloc/` or `blocs/` — BLoC, event, and state files (`blocs/` holds multiple named sub-BLoC folders when a feature has several, e.g. `login/blocs/otp_generation_bloc/`, `otp_verification_bloc/`, `otp_resent_bloc/`, `login_with_password_bloc/`).
- `services/` (or `service/`) — static-method classes performing HTTP calls.
- `models/` — freezed data models with generated `.freezed.dart` / `.g.dart` files co-located.
- `helpers/` — static utility classes: form validators, `ValueNotifier` holders, widget-building/dialog-showing routines.
- `widgets/` — feature-private widgets (tiles, app bars, tab views, popups).

Features present: `add_document`, `add_member`, `book_appointment`, `cart`, `doctor_detail`, `doctors`, `documents`, `edit_profile_details`, `home`, `Item_detail_screen`, `lab`, `lab_item_detail`, `login`, `main_screen`, `medical_insurances`, `member_details`, `members`, `my_appointments`, `my_profile`, `notification`, `profile`, `report`, `reports`, `set_password`, `speciality`.

### Shared layer (`lib/resources/`)

- `app_colors.dart`, `app_text_styles.dart`, `dimens.dart` — design tokens.
- `urls.dart` — all endpoint constants (`ConstantUrls`).
- `constant_messages.dart` — user-facing error message strings.
- `error_model.dart` — the single failure type (`ErrorModel { String message }`).
- `enums.dart`, `helpers.dart` — shared enums and utilities.
- `common_widgets.dart/` (a directory) — reusable widgets: buttons, app bar, dialogs, checkboxes, image-picker tile, member tile, etc.
- `common_helpers/` — shared form/validation helpers.
- `common_models/` — models used by multiple features (appointment, insurance).

### Navigation layer (`lib/route/`)

- `route_constants.dart` — string route names as `RouteConstants` constants.
- `router.dart` — `Approuter.generateRoute`, a single `switch` over route names. Every route is built with `PageRouteBuilder` using a shared 300 ms ease-in slide transition. Route parameters are passed as a `Map` in `RouteSettings.arguments` and unpacked by key inside each `case`.

## Data Flow

The concrete path from user interaction to network and back, as implemented (example: My Appointments):

1. **Screen → Event.** The screen widget dispatches an event with `context.read<SomeBloc>().add(...)`. Initial fetches are dispatched from `build` inside `WidgetsBinding.instance.addPostFrameCallback`. Credentials are read from `UserBloc` state at dispatch time and carried **inside the event** (`token`, `mobileNumber` fields).
2. **BLoC → Service.** Each BLoC registers handlers in its constructor via `on<Event>`. A handler first emits a "fetching" state (resetting success/failure flags with `copyWith`), then awaits a **static method** on the feature's service class.
3. **Service → Network.** Service methods build the request and call `package:http` directly. Business API calls POST to the single RPC endpoint `ConstantUrls.serviceUrl` with a JSON envelope of the shape `{ "CONTENT": "<stringified JSON payload>", "TYPE": "<operation code>" }` (e.g. `PP0015` = fetch appointments, `PP0019` = cancel appointment), plus a `Bearer` token in the `Authorization` header.
4. **Service → Either.** The service decodes the response, maps JSON into freezed models via `Model.fromJson`, and returns `Either<ErrorModel, T>` (dartz): `Right(data)` on HTTP 200/201, `Left(ErrorModel)` otherwise. `SocketException`, `TimeoutException`, and a generic `catch` are converted to `Left` with the corresponding `ConstantMessages` string.
5. **BLoC folds.** The handler calls `.fold(...)`: the left branch emits a failure state carrying the `ErrorModel`; the right branch performs any in-handler list processing (sorting, grouping appointments by month, splitting consulted/not-consulted) and emits a success state via `copyWith`.
6. **State → UI.** Screens subscribe with `BlocBuilder` or `BlocConsumer`. The `builder` branches on boolean state flags: fetching → GIF loading image; failed → `state.error.message` text; empty → empty-state text; otherwise → data widgets. One-shot side effects (success dialogs) run in the `BlocConsumer` `listener`.
7. **Local mutations.** Post-network list updates (cancelled/rescheduled/newly booked appointments) are applied by dedicated BLoC events that copy and transform the in-memory lists already held in state, without a refetch.

## Dependency Management

- **No service locator.** There is no `get_it`, `injectable`, `provider`-based DI, or manual locator anywhere in `lib/`.
- **BLoC registration:** all 20 globally shared BLoCs are instantiated eagerly in `lib/main.dart` inside one root `MultiBlocProvider` wrapping `MaterialApp`. Widgets obtain them with `context.read<T>()` / `BlocBuilder` from anywhere in the tree; no feature-scoped `BlocProvider` exists at route level.
- **Services:** every service class exposes only `static` methods and holds no state; they are never instantiated, injected, or mocked via abstraction — BLoCs reference them by class name directly.
- **Helpers:** static-only classes. Several hold **global mutable UI state as `static ValueNotifier` fields** (e.g. `MyAppointmentScreenHelpers.selectedTabNotifier`), reset imperatively from screen `build` methods.
- **Initialization order:** `main()` calls `WidgetsFlutterBinding.ensureInitialized()`, sets portrait orientation, then runs `MyApp`. `MaterialApp` sets `initialRoute` to the login screen and the global `ThemeData` (color scheme, input decoration theme, text button theme, text theme).
- **Session lifetime:** the authenticated user object (including `accessToken`) exists only in `UserBloc` state for the life of the process; no dependency provides persistence across launches.
