# skill.md — Technology & Dependency Profile

> Scope: derived exclusively from `pubspec.yaml` and Dart sources under `lib/`.
> Project name: `patient_portal` — version `1.0.0+1`, `publish_to: none` (private package).

## Core Environment

- **Dart SDK constraint:** `>=3.0.0 <4.0.0`
- **Flutter:** SDK dependency (`flutter: sdk: flutter`); Material Design enabled (`uses-material-design: true`).
- **Orientation:** locked to portrait (`portraitUp`, `portraitDown`) via `SystemChrome.setPreferredOrientations` in `lib/main.dart`.
- **UI toolkit:** Material widgets throughout; `cupertino_icons ^1.0.2` is available but the codebase is Material-based.
- **Code generation:** `build_runner ^2.4.6` drives `freezed` and `json_serializable`; generated `*.freezed.dart` and `*.g.dart` files are committed alongside their sources (341 Dart files total in `lib/`, of which 71 are generated).

## Production Dependencies

### State Management
| Package | Version | Role in `lib/` |
|---|---|---|
| `flutter_bloc` | `^9.1.1` | Sole state-management framework; 26 BLoC classes, all registered at the root `MultiBlocProvider`. |
| `freezed_annotation` | `^3.1.0` | Annotations for immutable state and model classes (`@freezed`). |
| `dartz` | `^0.10.1` | `Either<ErrorModel, T>` return type for every service-layer call; imported in 36 files. |

Dev-side counterparts: `freezed ^3.2.5`, `build_runner ^2.4.6`.

### Routing
- No third-party routing package. Navigation uses Flutter's built-in `Navigator` 1.0 with `MaterialApp.onGenerateRoute` delegating to `Approuter.generateRoute` (`lib/route/router.dart`), keyed by string constants in `lib/route/route_constants.dart`.

### Networking
| Package | Version | Role |
|---|---|---|
| `http` | `^1.1.0` | Only HTTP client. Service classes call `http.post`/`http.get` directly against endpoints defined in `lib/resources/urls.dart`. |
| `json_annotation` | `^4.8.1` | JSON field mapping (`@JsonKey`) on freezed models. |
| `json_serializable` | `^6.7.0` | Generates `fromJson`/`toJson` for models. |

Endpoint configuration (`lib/resources/urls.dart`) defines a `baseUrl` (`http://localhost:5000`), a `cloudUrl` (`http://185.52.54.42:8081`), a single RPC-style `serviceUrl` (`/api/apm/Service`), auth endpoints (`/api/user/ppauth`, `/api/user/ppauthotp`, `/api/user/ppauthpwd`), an upload endpoint, and static image-path prefixes.

### Local Storage / Databases
- **None.** No `shared_preferences`, `hive`, `sqflite`, `flutter_secure_storage`, or equivalent is declared. Session data (user, access token) lives in memory inside `UserBloc` state and is passed to other BLoCs as event fields.
- `path_provider ^2.1.1` is used in exactly one file (`lib/feature/add_member/services/image_convertion_services.dart`) to obtain the temporary directory for writing a downloaded profile image to a `File`.

### Asset Handling / Media / UI Utilities
| Package | Version | Usage in `lib/` |
|---|---|---|
| `flutter_svg` | `^2.0.7` | SVG icon rendering (asset icons). |
| `cached_network_image` | `^3.3.0` | Remote image display (7 usage sites). |
| `carousel_slider` | `^5.0.0` | Banner carousel (2 usage sites). |
| `smooth_page_indicator` | `^2.0.1` | Carousel page dots (2 usage sites). |
| `image_picker` | `^1.0.4` | Camera/gallery capture in add-member, add-document, and edit-profile helpers. |
| `file_picker` | `^11.0.2` | Document file selection in add-document flow. |
| `syncfusion_flutter_pdfviewer` | `^33.2.10` | In-app PDF rendering of reports via `SfPdfViewer.memory`. |
| `share_plus` | `^12.0.2` | Sharing report PDFs as `XFile` data. |
| `url_launcher` | `^6.2.1` | Opens external URLs (terms & conditions, drawer links). |
| `flutter_downloader` | `^1.11.1` | Declared in `pubspec.yaml`; **no import sites exist in `lib/`**. |
| `pinput` | `^6.0.2` | OTP input field on the login flow (1 usage site). |
| `intl` | `^0.20.2` | Date formatting (`DateFormat`) for appointments and reports. |

### Bundled Assets
- Asset directories: `assets/images/`, `assets/logos/`, `assets/gif_images/`, `assets/icons/`, `assets/icons/bottom_bar_icons/`.
- Font family **`inter`** bundled with 10 TTF weights/variants (Black → Thin plus a variable font). Text styles additionally reference Roboto-named styles through `lib/resources/app_text_styles.dart`.
- A GIF asset (`assets/gif_images/Ripple-0 2.gif`) serves as the global loading indicator.

## Native Integrations

- **No hand-written platform channels.** A search of `lib/` finds no `MethodChannel` or `EventChannel` declarations; all native capability is reached through the pub.dev plugins listed above (image picking, file picking, sharing, URL launching, filesystem paths).
- **No platform branching.** There are no `Platform.isAndroid` / `Platform.isIOS` conditionals in `lib/`.
- `dart:io` is imported in service files for `SocketException`, `HttpHeaders`, `File`, and `Directory` usage only.
- OS-visible configuration performed from Dart: portrait orientation lock and status-bar styling via `SystemUiOverlayStyle` (e.g., in app-bar widgets).
