// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reports_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportsEvent {
  int get memberId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String token, String mobileNumber)
        getReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String token, String mobileNumber)?
        getReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String token, String mobileNumber)?
        getReports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReports value) getReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetReports value)? getReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReports value)? getReports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportsEventCopyWith<ReportsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsEventCopyWith<$Res> {
  factory $ReportsEventCopyWith(
          ReportsEvent value, $Res Function(ReportsEvent) then) =
      _$ReportsEventCopyWithImpl<$Res>;
  $Res call({int memberId, String token, String mobileNumber});
}

/// @nodoc
class _$ReportsEventCopyWithImpl<$Res> implements $ReportsEventCopyWith<$Res> {
  _$ReportsEventCopyWithImpl(this._value, this._then);

  final ReportsEvent _value;
  // ignore: unused_field
  final $Res Function(ReportsEvent) _then;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? token = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetReportsCopyWith<$Res>
    implements $ReportsEventCopyWith<$Res> {
  factory _$$GetReportsCopyWith(
          _$GetReports value, $Res Function(_$GetReports) then) =
      __$$GetReportsCopyWithImpl<$Res>;
  @override
  $Res call({int memberId, String token, String mobileNumber});
}

/// @nodoc
class __$$GetReportsCopyWithImpl<$Res> extends _$ReportsEventCopyWithImpl<$Res>
    implements _$$GetReportsCopyWith<$Res> {
  __$$GetReportsCopyWithImpl(
      _$GetReports _value, $Res Function(_$GetReports) _then)
      : super(_value, (v) => _then(v as _$GetReports));

  @override
  _$GetReports get _value => super._value as _$GetReports;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? token = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_$GetReports(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReports implements GetReports {
  const _$GetReports(
      {required this.memberId,
      required this.token,
      required this.mobileNumber});

  @override
  final int memberId;
  @override
  final String token;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'ReportsEvent.getReports(memberId: $memberId, token: $token, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReports &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$$GetReportsCopyWith<_$GetReports> get copyWith =>
      __$$GetReportsCopyWithImpl<_$GetReports>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String token, String mobileNumber)
        getReports,
  }) {
    return getReports(memberId, token, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String token, String mobileNumber)?
        getReports,
  }) {
    return getReports?.call(memberId, token, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String token, String mobileNumber)?
        getReports,
    required TResult orElse(),
  }) {
    if (getReports != null) {
      return getReports(memberId, token, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReports value) getReports,
  }) {
    return getReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetReports value)? getReports,
  }) {
    return getReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReports value)? getReports,
    required TResult orElse(),
  }) {
    if (getReports != null) {
      return getReports(this);
    }
    return orElse();
  }
}

abstract class GetReports implements ReportsEvent {
  const factory GetReports(
      {required final int memberId,
      required final String token,
      required final String mobileNumber}) = _$GetReports;

  @override
  int get memberId;
  @override
  String get token;
  @override
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$GetReportsCopyWith<_$GetReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportsState {
  bool get isFetchingReports => throw _privateConstructorUsedError;
  bool get isFetchingFailed => throw _privateConstructorUsedError;
  bool get isFetchingSuccess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  int get selectedMemberId => throw _privateConstructorUsedError;
  List<ReportModel> get reports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportsStateCopyWith<ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsStateCopyWith<$Res> {
  factory $ReportsStateCopyWith(
          ReportsState value, $Res Function(ReportsState) then) =
      _$ReportsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetchingReports,
      bool isFetchingFailed,
      bool isFetchingSuccess,
      ErrorModel error,
      int selectedMemberId,
      List<ReportModel> reports});
}

/// @nodoc
class _$ReportsStateCopyWithImpl<$Res> implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._value, this._then);

  final ReportsState _value;
  // ignore: unused_field
  final $Res Function(ReportsState) _then;

  @override
  $Res call({
    Object? isFetchingReports = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSuccess = freezed,
    Object? error = freezed,
    Object? selectedMemberId = freezed,
    Object? reports = freezed,
  }) {
    return _then(_value.copyWith(
      isFetchingReports: isFetchingReports == freezed
          ? _value.isFetchingReports
          : isFetchingReports // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingFailed: isFetchingFailed == freezed
          ? _value.isFetchingFailed
          : isFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccess: isFetchingSuccess == freezed
          ? _value.isFetchingSuccess
          : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      selectedMemberId: selectedMemberId == freezed
          ? _value.selectedMemberId
          : selectedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportsStateCopyWith<$Res>
    implements $ReportsStateCopyWith<$Res> {
  factory _$$_ReportsStateCopyWith(
          _$_ReportsState value, $Res Function(_$_ReportsState) then) =
      __$$_ReportsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetchingReports,
      bool isFetchingFailed,
      bool isFetchingSuccess,
      ErrorModel error,
      int selectedMemberId,
      List<ReportModel> reports});
}

/// @nodoc
class __$$_ReportsStateCopyWithImpl<$Res>
    extends _$ReportsStateCopyWithImpl<$Res>
    implements _$$_ReportsStateCopyWith<$Res> {
  __$$_ReportsStateCopyWithImpl(
      _$_ReportsState _value, $Res Function(_$_ReportsState) _then)
      : super(_value, (v) => _then(v as _$_ReportsState));

  @override
  _$_ReportsState get _value => super._value as _$_ReportsState;

  @override
  $Res call({
    Object? isFetchingReports = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSuccess = freezed,
    Object? error = freezed,
    Object? selectedMemberId = freezed,
    Object? reports = freezed,
  }) {
    return _then(_$_ReportsState(
      isFetchingReports: isFetchingReports == freezed
          ? _value.isFetchingReports
          : isFetchingReports // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingFailed: isFetchingFailed == freezed
          ? _value.isFetchingFailed
          : isFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccess: isFetchingSuccess == freezed
          ? _value.isFetchingSuccess
          : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      selectedMemberId: selectedMemberId == freezed
          ? _value.selectedMemberId
          : selectedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      reports: reports == freezed
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
    ));
  }
}

/// @nodoc

class _$_ReportsState implements _ReportsState {
  const _$_ReportsState(
      {required this.isFetchingReports,
      required this.isFetchingFailed,
      required this.isFetchingSuccess,
      required this.error,
      required this.selectedMemberId,
      required final List<ReportModel> reports})
      : _reports = reports;

  @override
  final bool isFetchingReports;
  @override
  final bool isFetchingFailed;
  @override
  final bool isFetchingSuccess;
  @override
  final ErrorModel error;
  @override
  final int selectedMemberId;
  final List<ReportModel> _reports;
  @override
  List<ReportModel> get reports {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'ReportsState(isFetchingReports: $isFetchingReports, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, error: $error, selectedMemberId: $selectedMemberId, reports: $reports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportsState &&
            const DeepCollectionEquality()
                .equals(other.isFetchingReports, isFetchingReports) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingFailed, isFetchingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingSuccess, isFetchingSuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.selectedMemberId, selectedMemberId) &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFetchingReports),
      const DeepCollectionEquality().hash(isFetchingFailed),
      const DeepCollectionEquality().hash(isFetchingSuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(selectedMemberId),
      const DeepCollectionEquality().hash(_reports));

  @JsonKey(ignore: true)
  @override
  _$$_ReportsStateCopyWith<_$_ReportsState> get copyWith =>
      __$$_ReportsStateCopyWithImpl<_$_ReportsState>(this, _$identity);
}

abstract class _ReportsState implements ReportsState {
  const factory _ReportsState(
      {required final bool isFetchingReports,
      required final bool isFetchingFailed,
      required final bool isFetchingSuccess,
      required final ErrorModel error,
      required final int selectedMemberId,
      required final List<ReportModel> reports}) = _$_ReportsState;

  @override
  bool get isFetchingReports;
  @override
  bool get isFetchingFailed;
  @override
  bool get isFetchingSuccess;
  @override
  ErrorModel get error;
  @override
  int get selectedMemberId;
  @override
  List<ReportModel> get reports;
  @override
  @JsonKey(ignore: true)
  _$$_ReportsStateCopyWith<_$_ReportsState> get copyWith =>
      throw _privateConstructorUsedError;
}
