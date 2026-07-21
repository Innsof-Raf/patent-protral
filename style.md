# style.md — Code Style, Composition & State Conventions

> Scope: derived exclusively from `analysis_options.yaml` and Dart sources under `lib/`.

## Linting & Code Style

- **Baseline:** `analysis_options.yaml` includes `package:flutter_lints/flutter.yaml` (`flutter_lints ^6.0.0` in `dev_dependencies`).
- **Analyzer configuration:**
  - Excluded from analysis: `**/generated/**` and `lib/core/gen/**` (all code-generated files).
  - `invalid_annotation_target` is downgraded to `ignore` project-wide (permits `@JsonKey` on freezed constructor parameters without per-file suppressions).
- **Explicitly enabled lint rules** (added on top of the flutter_lints set):
  - `always_declare_return_types`
  - `prefer_final_locals`
  - `prefer_const_constructors_in_immutables`
  - `parameter_assignments`
  - `directives_ordering`
  - `unawaited_futures`
  - `avoid_void_async`
  - `await_only_futures`
  - `prefer_single_quotes`
  - `sort_pub_dependencies`
- **Formatting:** default `dart format` output (2-space indentation, trailing-comma-driven wrapping). Imports are absolute `package:patient_portal/...` paths, alphabetically ordered (consistent with `directives_ordering`).
- **File and directory naming:** snake_case files; generated files use `.freezed.dart` / `.g.dart` suffixes inside `generated/` subfolders. Two shared directories carry a `.dart` suffix in the directory name itself: `lib/core/resources/common_widgets.dart/` and `lib/core/resources/common_models/appointment_model.dart/`, so imports of those paths contain two `.dart` segments.
- **Class naming conventions in use:** `<Name>Screen` (pages), `<Name>Bloc` / `<Name>Event` / `<Name>State`, `<Verb><Noun>UseCase`, `<Name>Repository` / `<Name>RepositoryImpl`, `<Name>RemoteDataSource` / `...Impl`, `<Name>Model` (data DTO) vs plain entity names (domain), `Common<Name>` for shared widgets, `<Name>Helpers` for static helper classes, `<Name>Params` for freezed use-case parameter unions.

## Widget Composition

- **Dedicated widget classes are the dominant unit.** Files declaring `StatelessWidget` classes outnumber those declaring `StatefulWidget` roughly 136 to 24 (non-generated files). Reusable UI lives as classes in each feature's `presentation/widgets/` directory and in `lib/core/resources/common_widgets.dart/` (buttons, text fields, dialogs, snack bar, empty/error/loading views, app bars, tiles, checkboxes).
- **Private `_build...` helper methods coexist within screens.** Screen `State` classes also compose sections through private instance methods returning `Widget` (e.g. `_buildMemberSelector`, `_buildTimeFilter`, `_buildReportsList` in `reports_screen.dart`), so composition is mixed: shared/reused pieces become classes, screen-local sections are frequently helper methods.
- **Static helper classes build widget lists and dialogs.** `helpers/` directories contain static-method classes producing widget subtrees (`ReportsAppbarHelpers.createPopupMenuItem`), showing bottom sheets/dialogs (`MemberHelper.showMemberSelection`), and running validation.
- **StatefulWidget usage:** screens needing local UI state use `initState`/`didChangeDependencies`/`dispose` with `ValueNotifier` fields consumed via `ValueListenableBuilder` (e.g. the selected time-filter index), alongside bloc-held state. `SliverPersistentHeaderDelegate` subclasses are declared privately inside screen files where needed.
- **App bars** are `StatelessWidget implements PreferredSizeWidget` with an explicit `preferredSize` override.
- **Const discipline:** widespread `const` constructors and `super.key` parameters (reinforced by `prefer_const_constructors_in_immutables`).
- **Theming and tokens:** colors come from `AppColors`, text styles from `AppTextStyles` and `Theme.of(context).textTheme` (global `TextTheme`, button themes, input decoration theme, card/snackbar/bottom-sheet themes are configured once in `MyApp._buildTheme`). Spacing uses the `Gap` widget. Dimensions live in `lib/core/resources/dimens.dart`.
- **Localization access:** all user-facing strings go through the `context.lang` extension (`lib/core/localization/localization_extension.dart`) over generated `AppLocalizations`; formatted dates pass `context.currentLang` to `DateFormat` and a `.localize(...)` string extension.
- **Assets:** referenced via the generated `Assets` class (`Assets.icons.pdfIcon.path`) rather than string literals.

## Error Handling & State Patterns

- **Failure types.** The type actually threaded through repositories, use cases, and bloc states is `ErrorModel` — a freezed class with a single `message` field (`lib/core/resources/error_model.dart`). A parallel `Failure` hierarchy (`Failure` / `ServerFailure` / `NetworkFailure` on `Equatable`, `lib/core/error/failures.dart`) and an abstract `UseCase<T, Params>` returning `Either<Failure, T>` (`lib/core/usecases/usecase.dart`) exist in `core`.
- **Exception types.** `lib/core/error/exceptions.dart` defines `ServerException`, `CacheException`, and `AuthenticationException`; `ServerException.toString()` returns its message.
- **Catch sites, from the outside in:**
  1. **`ApiAgent`** catches `DioException` and any other error, converting both into `ServerException` with a mapped message — timeout types → `'Connection timeout'`, `badResponse` → the server body's `message` field when present, otherwise a status-code string, `connectionError` → `'No internet connection'`, fallback → `'Something went wrong'`.
  2. **Remote data sources** wrap each call in `try/catch`: `on ServerException` is rethrown untouched; anything else is logged with `dart:developer`'s `log(..., error: e, stackTrace: stackTrace)` and rethrown as a new `ServerException`. Invalid params-union variants (checked with `maybeMap`) also throw `ServerException`.
  3. **Repository implementations** are the exception boundary: a generic `catch` converts any thrown error into `Left(ErrorModel(message: e.toString().replaceAll('ServerException: ', '')))`. Exceptions do not propagate past the data layer.
- **Propagation — dartz `Either`.** Repositories and use cases return `Future<Either<ErrorModel, T>>`; blocs consume results exclusively through `.fold(leftHandler, rightHandler)`.
- **State shape — freezed flag clusters.** Each bloc has one `@freezed sealed` state class holding, per operation, a triplet of booleans (`is<X>ing`, `is<X>Success`, `is<X>Failed`), an `error: ErrorModel` field (initialized with an empty message), and the data collections. Every state provides a `State.initial()` factory. Handlers open by emitting `copyWith` that raises the in-progress flag and resets the related success/failure flags; terminal emits set exactly one outcome flag. Events and use-case params are freezed sealed unions dispatched with `maybeMap`.
- **Surfacing to the UI:**
  - `BlocBuilder` branches on the flags: in-progress → `CommonLoadingView`; failed → `CommonErrorView(title, message: state.error.message, onRetry: ...)`; empty results → `CommonEmptyState` (distinct from failure); otherwise → data widgets.
  - One-shot side effects run in `BlocListener` / `BlocConsumer` listeners (12 non-generated files): `CommonSnackBar.show(context, message: ..., type: SnackBarType...)`, success dialogs, and dependent refetches (e.g. reloading reports when the selected member changes, gated by `listenWhen`).
  - Async UI callbacks guard `BuildContext` use with `context.mounted` after awaits.
- **Debug logging:** the Dio interceptor `_CustomLogger` (registered in `injection_container.dart`) prints structured request/response/error logs — headers, pretty-printed JSON bodies, FormData summaries, and request duration — via `dev.log(name: 'API')`, gated behind `kDebugMode`.
