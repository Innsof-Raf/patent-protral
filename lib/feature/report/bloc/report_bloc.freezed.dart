// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) stroeRport,
    required TResult Function() clearReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StroeRport value) stroeRport,
    required TResult Function(ClearReport value) clearReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;
}

/// @nodoc
abstract class _$$StroeRportCopyWith<$Res> {
  factory _$$StroeRportCopyWith(
          _$StroeRport value, $Res Function(_$StroeRport) then) =
      __$$StroeRportCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$$StroeRportCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$$StroeRportCopyWith<$Res> {
  __$$StroeRportCopyWithImpl(
      _$StroeRport _value, $Res Function(_$StroeRport) _then)
      : super(_value, (v) => _then(v as _$StroeRport));

  @override
  _$StroeRport get _value => super._value as _$StroeRport;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$StroeRport(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StroeRport with DiagnosticableTreeMixin implements StroeRport {
  const _$StroeRport({required this.url});

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportEvent.stroeRport(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportEvent.stroeRport'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StroeRport &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$StroeRportCopyWith<_$StroeRport> get copyWith =>
      __$$StroeRportCopyWithImpl<_$StroeRport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) stroeRport,
    required TResult Function() clearReport,
  }) {
    return stroeRport(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
  }) {
    return stroeRport?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
    required TResult orElse(),
  }) {
    if (stroeRport != null) {
      return stroeRport(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StroeRport value) stroeRport,
    required TResult Function(ClearReport value) clearReport,
  }) {
    return stroeRport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
  }) {
    return stroeRport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
    required TResult orElse(),
  }) {
    if (stroeRport != null) {
      return stroeRport(this);
    }
    return orElse();
  }
}

abstract class StroeRport implements ReportEvent {
  const factory StroeRport({required final String url}) = _$StroeRport;

  String get url;
  @JsonKey(ignore: true)
  _$$StroeRportCopyWith<_$StroeRport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearReportCopyWith<$Res> {
  factory _$$ClearReportCopyWith(
          _$ClearReport value, $Res Function(_$ClearReport) then) =
      __$$ClearReportCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearReportCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$$ClearReportCopyWith<$Res> {
  __$$ClearReportCopyWithImpl(
      _$ClearReport _value, $Res Function(_$ClearReport) _then)
      : super(_value, (v) => _then(v as _$ClearReport));

  @override
  _$ClearReport get _value => super._value as _$ClearReport;
}

/// @nodoc

class _$ClearReport with DiagnosticableTreeMixin implements ClearReport {
  const _$ClearReport();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportEvent.clearReport()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReportEvent.clearReport'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearReport);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) stroeRport,
    required TResult Function() clearReport,
  }) {
    return clearReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
  }) {
    return clearReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? stroeRport,
    TResult Function()? clearReport,
    required TResult orElse(),
  }) {
    if (clearReport != null) {
      return clearReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StroeRport value) stroeRport,
    required TResult Function(ClearReport value) clearReport,
  }) {
    return clearReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
  }) {
    return clearReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StroeRport value)? stroeRport,
    TResult Function(ClearReport value)? clearReport,
    required TResult orElse(),
  }) {
    if (clearReport != null) {
      return clearReport(this);
    }
    return orElse();
  }
}

abstract class ClearReport implements ReportEvent {
  const factory ClearReport() = _$ClearReport;
}

/// @nodoc
mixin _$ReportState {
  Uint8List? get report => throw _privateConstructorUsedError;
  bool get isRepoertSaving => throw _privateConstructorUsedError;
  bool get isReportSavingFailed => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  bool get isReportSavingSucces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call(
      {Uint8List? report,
      bool isRepoertSaving,
      bool isReportSavingFailed,
      ErrorModel error,
      bool isReportSavingSucces});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object? report = freezed,
    Object? isRepoertSaving = freezed,
    Object? isReportSavingFailed = freezed,
    Object? error = freezed,
    Object? isReportSavingSucces = freezed,
  }) {
    return _then(_value.copyWith(
      report: report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isRepoertSaving: isRepoertSaving == freezed
          ? _value.isRepoertSaving
          : isRepoertSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportSavingFailed: isReportSavingFailed == freezed
          ? _value.isReportSavingFailed
          : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      isReportSavingSucces: isReportSavingSucces == freezed
          ? _value.isReportSavingSucces
          : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$_ReportStateCopyWith(
          _$_ReportState value, $Res Function(_$_ReportState) then) =
      __$$_ReportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uint8List? report,
      bool isRepoertSaving,
      bool isReportSavingFailed,
      ErrorModel error,
      bool isReportSavingSucces});
}

/// @nodoc
class __$$_ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$$_ReportStateCopyWith<$Res> {
  __$$_ReportStateCopyWithImpl(
      _$_ReportState _value, $Res Function(_$_ReportState) _then)
      : super(_value, (v) => _then(v as _$_ReportState));

  @override
  _$_ReportState get _value => super._value as _$_ReportState;

  @override
  $Res call({
    Object? report = freezed,
    Object? isRepoertSaving = freezed,
    Object? isReportSavingFailed = freezed,
    Object? error = freezed,
    Object? isReportSavingSucces = freezed,
  }) {
    return _then(_$_ReportState(
      report: report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isRepoertSaving: isRepoertSaving == freezed
          ? _value.isRepoertSaving
          : isRepoertSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isReportSavingFailed: isReportSavingFailed == freezed
          ? _value.isReportSavingFailed
          : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      isReportSavingSucces: isReportSavingSucces == freezed
          ? _value.isReportSavingSucces
          : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReportState with DiagnosticableTreeMixin implements _ReportState {
  const _$_ReportState(
      {required this.report,
      required this.isRepoertSaving,
      required this.isReportSavingFailed,
      required this.error,
      required this.isReportSavingSucces});

  @override
  final Uint8List? report;
  @override
  final bool isRepoertSaving;
  @override
  final bool isReportSavingFailed;
  @override
  final ErrorModel error;
  @override
  final bool isReportSavingSucces;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportState(report: $report, isRepoertSaving: $isRepoertSaving, isReportSavingFailed: $isReportSavingFailed, error: $error, isReportSavingSucces: $isReportSavingSucces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportState'))
      ..add(DiagnosticsProperty('report', report))
      ..add(DiagnosticsProperty('isRepoertSaving', isRepoertSaving))
      ..add(DiagnosticsProperty('isReportSavingFailed', isReportSavingFailed))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isReportSavingSucces', isReportSavingSucces));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportState &&
            const DeepCollectionEquality().equals(other.report, report) &&
            const DeepCollectionEquality()
                .equals(other.isRepoertSaving, isRepoertSaving) &&
            const DeepCollectionEquality()
                .equals(other.isReportSavingFailed, isReportSavingFailed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.isReportSavingSucces, isReportSavingSucces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(report),
      const DeepCollectionEquality().hash(isRepoertSaving),
      const DeepCollectionEquality().hash(isReportSavingFailed),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(isReportSavingSucces));

  @JsonKey(ignore: true)
  @override
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      __$$_ReportStateCopyWithImpl<_$_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {required final Uint8List? report,
      required final bool isRepoertSaving,
      required final bool isReportSavingFailed,
      required final ErrorModel error,
      required final bool isReportSavingSucces}) = _$_ReportState;

  @override
  Uint8List? get report;
  @override
  bool get isRepoertSaving;
  @override
  bool get isReportSavingFailed;
  @override
  ErrorModel get error;
  @override
  bool get isReportSavingSucces;
  @override
  @JsonKey(ignore: true)
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
