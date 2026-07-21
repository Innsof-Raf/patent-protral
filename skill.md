# skill.md — Technology Stack & Dependencies

> Scope: derived exclusively from `pubspec.yaml`, `analysis_options.yaml`, and Dart sources under `lib/`.
> Project: `patient_portal` — version `1.0.0+1`, `publish_to: 'none'` (private application package).

## Core Environment

- **Dart SDK constraint:** `>=3.8.0 <4.0.0`
- **Flutter:** consumed via `sdk: flutter`; no explicit Flutter version pin in `pubspec.yaml`.
- **Target platforms (as configured on the Dart/pubspec side):** Android and iOS. `flutter_launcher_icons` is configured for `android` and `ios` (`min_sdk_android: 21`); `flutter_native_splash` is enabled for `android: true`, `ios: true` and explicitly disabled for `web: false`.
- **UI toolkit:** Material Design (`uses-material-design: true`), Material 3 (`useMaterial3: true` in `lib/main.dart`), single light `ColorScheme` seeded from `AppColors.primaryCyan`.
- **Orientation:** locked to portrait (`portraitUp`, `portraitDown`) via `SystemChrome.setPreferredOrientations` in `lib/main.dart`.
- **System UI:** edge-to-edge mode (`SystemUiMode.edgeToEdge`) with a shared transparent `SystemUiOverlayStyle` constant applied globally and reused in the app-bar theme.
- **Localization:** `generate: true` with ARB sources in `lib/l10n/` (`app_en.arb`, `app_ar.arb`); generated delegates live in `lib/core/gen/l10n/`. Date symbol data is initialized for `en` and `ar` at startup.
- **Build-time configuration:** the API base URL is injected via `String.fromEnvironment('API_BASE_URL')` in `lib/core/resources/urls.dart` (i.e., a `--dart-define` value) with a hard-coded default.
- **Code generation:** `build_runner` drives `freezed`, `json_serializable`, `auto_route_generator`, and `flutter_gen_runner`. Generated `.freezed.dart`/`.g.dart` files are emitted into per-directory `generated/` subfolders; flutter_gen output goes to `lib/core/gen/`.

## Production Dependencies

### State Management
| Package | Version | Role in `lib/` |
|---|---|---|
| `flutter_bloc` | ^9.1.1 | Sole state-management framework; all BLoCs provided app-wide in one root `MultiBlocProvider` (`lib/main.dart`) |
| `equatable` | ^2.1.0 | Base class for `Failure` types (`lib/core/error/failures.dart`) |
| `freezed_annotation` | ^3.1.0 | `@freezed` immutable states, events, params unions, entities, and models |
| `dartz` | ^0.10.1 | `Either<ErrorModel, T>` return type across repositories and use cases |

### Routing
| Package | Version | Role in `lib/` |
|---|---|---|
| `auto_route` | ^11.1.0 | Declarative routing: `AppRouter extends RootStackRouter` (`lib/core/route/app_router.dart`) with generated `app_router.gr.dart`, `@RoutePage`-annotated screens, `DeepLink`-based initial stack selection, and an `AutoRouteGuard` (`lib/core/route/auth_guard.dart`) |

### Networking
| Package | Version | Role in `lib/` |
|---|---|---|
| `dio` | ^5.10.0 | Primary HTTP client, wrapped by `ApiAgent` (`lib/core/resources/api_agent.dart`); configured with 20-second connect/receive timeouts and a debug-only logging interceptor (`_CustomLogger` in `injection_container.dart`) |
| `http` | ^1.6.0 | Declared in `pubspec.yaml` |

Endpoint configuration lives in `lib/core/resources/urls.dart` (`ConstantUrls`): a `baseUrl` from `--dart-define`, a single RPC-style `serviceUrl` (`/api/Apm/service`), auth endpoints (`/api/user/ppauth`, `/api/user/ppauthotp`, `/api/user/auth`, `/api/user/pp-refreshtoken`), an upload endpoint, static image-path prefixes, and an external terms-and-conditions URL.

### Local Storage / Databases
| Package | Version | Role in `lib/` |
|---|---|---|
| `shared_preferences` | ^2.5.5 | Sole persistence mechanism. Stores the authenticated user (including tokens) as a JSON string under the key `CACHED_USER` (`UserLocalDataSourceImpl`, `lib/feature/profile/data/datasources/user_local_data_source.dart`) and the selected language (`LanguageBloc`) |

No database package (`hive`, `sqflite`, `drift`, `isar`, etc.) is declared.

### Data Modeling / Serialization
| Package | Version | Role |
|---|---|---|
| `json_annotation` | ^4.12.0 | JSON field mapping on models; custom lenient converters (`intFromJson`, `boolFromJson`, `IgnoreConverter`, etc.) in `lib/core/resources/api_helpers.dart` |
| `json_serializable` | ^6.14.0 | Declared under `dependencies`; generates `fromJson`/`toJson` |
| `intl` | ^0.20.2 | Locale-aware `DateFormat` usage; `ar`/`en` date symbol initialization |
| `collection` | ^1.19.1 | Utility collection APIs |

### Dependency Injection
| Package | Version | Role |
|---|---|---|
| `get_it` | ^9.2.1 | Global service locator `sl` with all registrations in `lib/core/injection_container.dart` |

### Asset Handling & UI Components
| Package | Version | Usage in `lib/` |
|---|---|---|
| `flutter_svg` | ^2.3.0 | SVG icon rendering; flutter_gen integration enabled (`flutter_svg: true`) |
| `cached_network_image` | ^3.4.1 | Remote image display (common network image widget) |
| `google_fonts` | ^8.1.0 | Runtime font loading (alongside the bundled `inter` family) |
| `gap` | ^3.0.1 | `Gap` spacing widget used pervasively in layouts |
| `carousel_slider` | ^5.1.2 | Banner carousel |
| `smooth_page_indicator` | ^2.0.1 | Carousel page indicator |
| `pinput` | ^6.0.2 | OTP input on the login flow, with a `SmsRetriever` integration |
| `syncfusion_flutter_pdfviewer` | ^33.2.13 | In-app PDF rendering of downloaded reports |
| `cupertino_icons` | ^1.0.9 | iOS-style icon set |

Bundled assets declared in `pubspec.yaml`: `assets/images/`, `assets/logos/`, `assets/gif_images/`, `assets/icons/`, `assets/icons/bottom_bar_icons/`, plus ten `inter` TTF weights/variants. Asset references are type-safe through generated classes in `lib/core/gen/assets.gen.dart` and `fonts.gen.dart`.

### Files, Media & Platform Services
| Package | Version | Usage in `lib/` |
|---|---|---|
| `file_picker` | ^11.0.2 | Document selection and the native save dialog (`FilePicker.saveFile` with in-memory bytes for report export in `report_app_bar.dart`) |
| `image_picker` | ^1.2.3 | Camera/gallery capture (`lib/core/resources/common_helpers/image_picker_helpers.dart`) |
| `path_provider` | ^2.1.6 | Filesystem paths |
| `share_plus` | ^12.0.2 | Sharing content from the app |
| `url_launcher` | ^6.3.2 | Opens the terms & conditions URL with `LaunchMode.inAppBrowserView` (`login_terms_row.dart`) |
| `smart_auth` | ^3.2.0 | SMS User Consent API for OTP auto-retrieval (`sms_retriever_impl.dart`) |
| `flutter_downloader` | ^1.12.0 | Declared in `pubspec.yaml`; no import of this package was found in `lib/` |
| `flutter_native_splash` | ^2.4.8 | Splash preserved in `main()` before async initialization and removed in the `MaterialApp.router` builder; configured with color `#9A73AD`, fullscreen |
| `flutter_localizations` | sdk | Material/Widgets/Cupertino localization delegates |

## Dev Dependencies

| Package | Version | Purpose |
|---|---|---|
| `auto_route_generator` | ^10.5.0 | Generates `app_router.gr.dart` |
| `build_runner` | ^2.15.0 | Code-generation driver |
| `flutter_gen_runner` | ^5.14.1 | Generates asset/font classes into `lib/core/gen/` |
| `flutter_launcher_icons` | ^0.14.4 | App icons from `assets/logos/app_logo/app_logo.png` (adaptive icon, white background) |
| `flutter_lints` | ^6.0.0 | Lint baseline (see `style.md`) |
| `freezed` | ^3.2.5 | Generates `.freezed.dart` files |
| `flutter_test` | sdk | Test framework |

## Native Integrations (Dart-side evidence only)

- **No hand-written platform channels.** A search of `lib/` finds no `MethodChannel` or `EventChannel` declarations; all native capability is reached through the pub.dev plugins listed above.
- **SMS OTP auto-retrieval:** `SmsRetrieverImpl` (`lib/feature/login/presentation/helpers/sms_retriever_impl.dart`) implements pinput's `SmsRetriever` on top of smart_auth's User Consent API (`getSmsWithUserConsentApi`), with listener removal on `dispose`.
- **System chrome control:** edge-to-edge system UI mode, a global transparent `SystemUiOverlayStyle`, portrait orientation lock (`lib/main.dart`), and per-screen overlay styles inside app-bar widgets.
- **Native splash lifecycle:** `FlutterNativeSplash.preserve` before async init in `main()`, `FlutterNativeSplash.remove` on first frame in the router builder.
- **Native file dialogs:** `FilePicker.saveFile` presents the OS save dialog, writing report bytes held in BLoC state.
- **In-app browser:** `launchUrl(..., mode: LaunchMode.inAppBrowserView)` for the user-policy page.
