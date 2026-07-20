# style.md — Code Style, Composition & State Conventions

> Scope: derived exclusively from `analysis_options.yaml` and Dart sources under `lib/`.

## Linting & Code Style

- **Ruleset:** `analysis_options.yaml` includes `package:flutter_lints/flutter.yaml` (package version `^6.0.0` in `dev_dependencies`) and nothing else — the `linter: rules:` section contains only commented-out placeholders. The project therefore runs on the **stock flutter_lints ruleset with zero customizations**: no rules added, none disabled, no `analyzer:` excludes, no strict language modes.
- **Per-file suppressions:** freezed model files begin with `// ignore_for_file: invalid_annotation_target` to permit `@JsonKey` on constructor parameters.
- **Formatting:** code follows default `dart format` output (2-space indentation, trailing-comma-driven wrapping).
- **File naming:** snake_case file names; generated files use the standard `.freezed.dart` / `.g.dart` suffixes and sit next to their source. Several *directories* carry a `.dart` suffix in their names (`lib/resources/common_widgets.dart/`, `lib/feature/book_appointment/blocs/appointment_bloc.dart/`, `lib/feature/cart/models/cart_item_model.dart/`, `lib/feature/home/models/home_data_model.dart/`), so import paths contain two `.dart` segments.
- **Class naming conventions in use:** `<Feature>Screen`, `<Feature>Bloc` / `...Event` / `...State`, `<Feature>Services` (static), `<Feature>Helpers` / `...ScreenHelpers` / `...FormHelpers` (static), `<Name>Model`, `<Name>Tile` for list items, `<Name>AppBar` for app bars.

## Widget Composition

- **StatelessWidget-only codebase.** `lib/` contains **115 `StatelessWidget` classes and zero `StatefulWidget` classes**. All mutable UI state lives outside the widget tree, in one of two places:
  1. **BLoC state** (freezed classes) consumed via `BlocBuilder` / `BlocConsumer`.
  2. **Static `ValueNotifier` fields on helper classes** consumed via `ValueListenableBuilder` (11 files) — used for purely visual state such as the selected tab index; screens reset these notifiers imperatively at the top of `build`.
- **Decomposition into classes, not helper methods.** UI is broken into dedicated widget classes placed in each feature's `widgets/` directory (tiles, tab-bar views, popups, app bars) and into `lib/resources/common_widgets.dart/` for shared elements (buttons, dialogs, checkboxes, radio buttons, profile image, image-picker tile). Screens compose these classes rather than defining private `_build...()` methods.
- **Exception — helper-built subtrees:** some `helpers/` classes contain static methods that construct widget subtrees or show bottom sheets/dialogs (e.g. the image-source pickers in `add_document`, `add_member`, and `edit_profile_details` helpers), so a minority of UI construction lives in static helper methods rather than widget classes.
- **App bars** are `StatelessWidget implements PreferredSizeWidget` with an explicit `preferredSize` override.
- **Initial data loading** is triggered inside `build` via `WidgetsBinding.instance.addPostFrameCallback`, which dispatches a BLoC event (there is no `initState`, consistent with the absence of StatefulWidgets).
- **Theming:** colors (`AppColors`), text styles (`AppTextStyles`), and dimensions (`Dimens`) are centralized in `lib/resources/` and referenced by constant; global input decoration, text-button, and text themes are configured once in `MaterialApp.theme`. Status-bar appearance is set per-app-bar with `SystemUiOverlayStyle`.
- **Loading indicator** is a bundled GIF asset rendered with `Image.asset`, sized relative to a `LayoutBuilder` constraint, rather than a progress-indicator widget.

## Error Handling & State Patterns

- **Failure type:** one universal class, `ErrorModel { required String message }` (`lib/resources/error_model.dart`). No error codes, no exception subclassing.
- **Catch site — the service layer.** Every service method wraps its HTTP call in `try/catch` with three tiers: `on SocketException` → no-network message, `on TimeoutException` → timeout message, generic `catch` → server-failure message. All messages are constants in `ConstantMessages` (`lib/resources/constant_messages.dart`). Non-2xx status codes and business-level failures in a 200 body (e.g. a cancel response whose `STATUS`/`message` fields don't match the success values) also return failures. Exceptions never escape the service layer.
- **Propagation — dartz `Either`.** Services return `Future<Either<ErrorModel, T>>`; `Left` carries `ErrorModel`, `Right` carries parsed freezed models. BLoCs consume results exclusively through `.fold(leftHandler, rightHandler)`.
- **State shape — boolean flag clusters.** Each BLoC has a single freezed state class holding, per operation, a triplet of flags (`is<X>ing`, `is<X>Success`, `is<X>Failed`), an `error: ErrorModel` field (initialized to an empty message), and the data collections. Handlers begin by emitting a `copyWith` that raises the in-progress flag and resets the success/failure flags of related operations; terminal emits set exactly one of success/failure. States are compared by freezed value equality; every state provides a `State.initial()` factory with empty collections.
- **Per-item operation state:** models embed transient UI flags with freezed `@Default` values (e.g. `isCanceling` on the appointment model) so a single list item can show its own in-flight status.
- **Surfacing to the user:** `BlocBuilder` branches render `state.error.message` as centered text for fetch failures; `BlocConsumer` listeners react to success/failure flag transitions with animated dialogs (`showGeneralDialog` + a shared `SucessDialog` widget). Empty result sets are distinguished from failures and rendered with dedicated empty-state text.
