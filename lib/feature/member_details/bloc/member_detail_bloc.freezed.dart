// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberDetailEvent {
  int get memberId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String token) getMemberDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String token)? getMemberDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String token)? getMemberDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMemberDetails value) getMemberDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMemberDetails value)? getMemberDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMemberDetails value)? getMemberDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberDetailEventCopyWith<MemberDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailEventCopyWith<$Res> {
  factory $MemberDetailEventCopyWith(
          MemberDetailEvent value, $Res Function(MemberDetailEvent) then) =
      _$MemberDetailEventCopyWithImpl<$Res>;
  $Res call({int memberId, String token});
}

/// @nodoc
class _$MemberDetailEventCopyWithImpl<$Res>
    implements $MemberDetailEventCopyWith<$Res> {
  _$MemberDetailEventCopyWithImpl(this._value, this._then);

  final MemberDetailEvent _value;
  // ignore: unused_field
  final $Res Function(MemberDetailEvent) _then;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? token = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$GetMemberDetailsCopyWith<$Res>
    implements $MemberDetailEventCopyWith<$Res> {
  factory _$$GetMemberDetailsCopyWith(
          _$GetMemberDetails value, $Res Function(_$GetMemberDetails) then) =
      __$$GetMemberDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int memberId, String token});
}

/// @nodoc
class __$$GetMemberDetailsCopyWithImpl<$Res>
    extends _$MemberDetailEventCopyWithImpl<$Res>
    implements _$$GetMemberDetailsCopyWith<$Res> {
  __$$GetMemberDetailsCopyWithImpl(
      _$GetMemberDetails _value, $Res Function(_$GetMemberDetails) _then)
      : super(_value, (v) => _then(v as _$GetMemberDetails));

  @override
  _$GetMemberDetails get _value => super._value as _$GetMemberDetails;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? token = freezed,
  }) {
    return _then(_$GetMemberDetails(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMemberDetails implements GetMemberDetails {
  const _$GetMemberDetails({required this.memberId, required this.token});

  @override
  final int memberId;
  @override
  final String token;

  @override
  String toString() {
    return 'MemberDetailEvent.getMemberDetails(memberId: $memberId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMemberDetails &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetMemberDetailsCopyWith<_$GetMemberDetails> get copyWith =>
      __$$GetMemberDetailsCopyWithImpl<_$GetMemberDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String token) getMemberDetails,
  }) {
    return getMemberDetails(memberId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String token)? getMemberDetails,
  }) {
    return getMemberDetails?.call(memberId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String token)? getMemberDetails,
    required TResult orElse(),
  }) {
    if (getMemberDetails != null) {
      return getMemberDetails(memberId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMemberDetails value) getMemberDetails,
  }) {
    return getMemberDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMemberDetails value)? getMemberDetails,
  }) {
    return getMemberDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMemberDetails value)? getMemberDetails,
    required TResult orElse(),
  }) {
    if (getMemberDetails != null) {
      return getMemberDetails(this);
    }
    return orElse();
  }
}

abstract class GetMemberDetails implements MemberDetailEvent {
  const factory GetMemberDetails(
      {required final int memberId,
      required final String token}) = _$GetMemberDetails;

  @override
  int get memberId;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetMemberDetailsCopyWith<_$GetMemberDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemberDetailState {
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingFailed => throw _privateConstructorUsedError;
  bool get isFetchingSucces => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberDetailStateCopyWith<MemberDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailStateCopyWith<$Res> {
  factory $MemberDetailStateCopyWith(
          MemberDetailState value, $Res Function(MemberDetailState) then) =
      _$MemberDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetching,
      bool isFetchingFailed,
      bool isFetchingSucces,
      ErrorModel error});
}

/// @nodoc
class _$MemberDetailStateCopyWithImpl<$Res>
    implements $MemberDetailStateCopyWith<$Res> {
  _$MemberDetailStateCopyWithImpl(this._value, this._then);

  final MemberDetailState _value;
  // ignore: unused_field
  final $Res Function(MemberDetailState) _then;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSucces = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingFailed: isFetchingFailed == freezed
          ? _value.isFetchingFailed
          : isFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSucces: isFetchingSucces == freezed
          ? _value.isFetchingSucces
          : isFetchingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberDetailStateCopyWith<$Res>
    implements $MemberDetailStateCopyWith<$Res> {
  factory _$$_MemberDetailStateCopyWith(_$_MemberDetailState value,
          $Res Function(_$_MemberDetailState) then) =
      __$$_MemberDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetching,
      bool isFetchingFailed,
      bool isFetchingSucces,
      ErrorModel error});
}

/// @nodoc
class __$$_MemberDetailStateCopyWithImpl<$Res>
    extends _$MemberDetailStateCopyWithImpl<$Res>
    implements _$$_MemberDetailStateCopyWith<$Res> {
  __$$_MemberDetailStateCopyWithImpl(
      _$_MemberDetailState _value, $Res Function(_$_MemberDetailState) _then)
      : super(_value, (v) => _then(v as _$_MemberDetailState));

  @override
  _$_MemberDetailState get _value => super._value as _$_MemberDetailState;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSucces = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_MemberDetailState(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingFailed: isFetchingFailed == freezed
          ? _value.isFetchingFailed
          : isFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSucces: isFetchingSucces == freezed
          ? _value.isFetchingSucces
          : isFetchingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$_MemberDetailState implements _MemberDetailState {
  const _$_MemberDetailState(
      {required this.isFetching,
      required this.isFetchingFailed,
      required this.isFetchingSucces,
      required this.error});

  @override
  final bool isFetching;
  @override
  final bool isFetchingFailed;
  @override
  final bool isFetchingSucces;
  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'MemberDetailState(isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSucces: $isFetchingSucces, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberDetailState &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingFailed, isFetchingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingSucces, isFetchingSucces) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(isFetchingFailed),
      const DeepCollectionEquality().hash(isFetchingSucces),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_MemberDetailStateCopyWith<_$_MemberDetailState> get copyWith =>
      __$$_MemberDetailStateCopyWithImpl<_$_MemberDetailState>(
          this, _$identity);
}

abstract class _MemberDetailState implements MemberDetailState {
  const factory _MemberDetailState(
      {required final bool isFetching,
      required final bool isFetchingFailed,
      required final bool isFetchingSucces,
      required final ErrorModel error}) = _$_MemberDetailState;

  @override
  bool get isFetching;
  @override
  bool get isFetchingFailed;
  @override
  bool get isFetchingSucces;
  @override
  ErrorModel get error;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDetailStateCopyWith<_$_MemberDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
