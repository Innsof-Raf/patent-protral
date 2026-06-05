// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddDocumentEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getDocumentTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getDocumentTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getDocumentTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDocumentTypes value) getDocumentTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDocumentTypes value)? getDocumentTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDocumentTypes value)? getDocumentTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDocumentEventCopyWith<AddDocumentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocumentEventCopyWith<$Res> {
  factory $AddDocumentEventCopyWith(
          AddDocumentEvent value, $Res Function(AddDocumentEvent) then) =
      _$AddDocumentEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AddDocumentEventCopyWithImpl<$Res>
    implements $AddDocumentEventCopyWith<$Res> {
  _$AddDocumentEventCopyWithImpl(this._value, this._then);

  final AddDocumentEvent _value;
  // ignore: unused_field
  final $Res Function(AddDocumentEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetDocumentTypesCopyWith<$Res>
    implements $AddDocumentEventCopyWith<$Res> {
  factory _$$GetDocumentTypesCopyWith(
          _$GetDocumentTypes value, $Res Function(_$GetDocumentTypes) then) =
      __$$GetDocumentTypesCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$GetDocumentTypesCopyWithImpl<$Res>
    extends _$AddDocumentEventCopyWithImpl<$Res>
    implements _$$GetDocumentTypesCopyWith<$Res> {
  __$$GetDocumentTypesCopyWithImpl(
      _$GetDocumentTypes _value, $Res Function(_$GetDocumentTypes) _then)
      : super(_value, (v) => _then(v as _$GetDocumentTypes));

  @override
  _$GetDocumentTypes get _value => super._value as _$GetDocumentTypes;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$GetDocumentTypes(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDocumentTypes implements GetDocumentTypes {
  const _$GetDocumentTypes({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AddDocumentEvent.getDocumentTypes(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentTypes &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetDocumentTypesCopyWith<_$GetDocumentTypes> get copyWith =>
      __$$GetDocumentTypesCopyWithImpl<_$GetDocumentTypes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getDocumentTypes,
  }) {
    return getDocumentTypes(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? getDocumentTypes,
  }) {
    return getDocumentTypes?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getDocumentTypes,
    required TResult orElse(),
  }) {
    if (getDocumentTypes != null) {
      return getDocumentTypes(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDocumentTypes value) getDocumentTypes,
  }) {
    return getDocumentTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDocumentTypes value)? getDocumentTypes,
  }) {
    return getDocumentTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDocumentTypes value)? getDocumentTypes,
    required TResult orElse(),
  }) {
    if (getDocumentTypes != null) {
      return getDocumentTypes(this);
    }
    return orElse();
  }
}

abstract class GetDocumentTypes implements AddDocumentEvent {
  const factory GetDocumentTypes({required final String token}) =
      _$GetDocumentTypes;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetDocumentTypesCopyWith<_$GetDocumentTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddDocumentState {
  bool get isFetchingDocumentTypes => throw _privateConstructorUsedError;
  bool get isFetchingDocumentTypesFailed => throw _privateConstructorUsedError;
  bool get isFetchingDocumentTypesSucces => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<DocumentTypeModel> get documentTypes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDocumentStateCopyWith<AddDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocumentStateCopyWith<$Res> {
  factory $AddDocumentStateCopyWith(
          AddDocumentState value, $Res Function(AddDocumentState) then) =
      _$AddDocumentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetchingDocumentTypes,
      bool isFetchingDocumentTypesFailed,
      bool isFetchingDocumentTypesSucces,
      ErrorModel error,
      List<DocumentTypeModel> documentTypes});
}

/// @nodoc
class _$AddDocumentStateCopyWithImpl<$Res>
    implements $AddDocumentStateCopyWith<$Res> {
  _$AddDocumentStateCopyWithImpl(this._value, this._then);

  final AddDocumentState _value;
  // ignore: unused_field
  final $Res Function(AddDocumentState) _then;

  @override
  $Res call({
    Object? isFetchingDocumentTypes = freezed,
    Object? isFetchingDocumentTypesFailed = freezed,
    Object? isFetchingDocumentTypesSucces = freezed,
    Object? error = freezed,
    Object? documentTypes = freezed,
  }) {
    return _then(_value.copyWith(
      isFetchingDocumentTypes: isFetchingDocumentTypes == freezed
          ? _value.isFetchingDocumentTypes
          : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDocumentTypesFailed: isFetchingDocumentTypesFailed == freezed
          ? _value.isFetchingDocumentTypesFailed
          : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDocumentTypesSucces: isFetchingDocumentTypesSucces == freezed
          ? _value.isFetchingDocumentTypesSucces
          : isFetchingDocumentTypesSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      documentTypes: documentTypes == freezed
          ? _value.documentTypes
          : documentTypes // ignore: cast_nullable_to_non_nullable
              as List<DocumentTypeModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddDocumentStateCopyWith<$Res>
    implements $AddDocumentStateCopyWith<$Res> {
  factory _$$_AddDocumentStateCopyWith(
          _$_AddDocumentState value, $Res Function(_$_AddDocumentState) then) =
      __$$_AddDocumentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetchingDocumentTypes,
      bool isFetchingDocumentTypesFailed,
      bool isFetchingDocumentTypesSucces,
      ErrorModel error,
      List<DocumentTypeModel> documentTypes});
}

/// @nodoc
class __$$_AddDocumentStateCopyWithImpl<$Res>
    extends _$AddDocumentStateCopyWithImpl<$Res>
    implements _$$_AddDocumentStateCopyWith<$Res> {
  __$$_AddDocumentStateCopyWithImpl(
      _$_AddDocumentState _value, $Res Function(_$_AddDocumentState) _then)
      : super(_value, (v) => _then(v as _$_AddDocumentState));

  @override
  _$_AddDocumentState get _value => super._value as _$_AddDocumentState;

  @override
  $Res call({
    Object? isFetchingDocumentTypes = freezed,
    Object? isFetchingDocumentTypesFailed = freezed,
    Object? isFetchingDocumentTypesSucces = freezed,
    Object? error = freezed,
    Object? documentTypes = freezed,
  }) {
    return _then(_$_AddDocumentState(
      isFetchingDocumentTypes: isFetchingDocumentTypes == freezed
          ? _value.isFetchingDocumentTypes
          : isFetchingDocumentTypes // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDocumentTypesFailed: isFetchingDocumentTypesFailed == freezed
          ? _value.isFetchingDocumentTypesFailed
          : isFetchingDocumentTypesFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDocumentTypesSucces: isFetchingDocumentTypesSucces == freezed
          ? _value.isFetchingDocumentTypesSucces
          : isFetchingDocumentTypesSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      documentTypes: documentTypes == freezed
          ? _value._documentTypes
          : documentTypes // ignore: cast_nullable_to_non_nullable
              as List<DocumentTypeModel>,
    ));
  }
}

/// @nodoc

class _$_AddDocumentState implements _AddDocumentState {
  const _$_AddDocumentState(
      {required this.isFetchingDocumentTypes,
      required this.isFetchingDocumentTypesFailed,
      required this.isFetchingDocumentTypesSucces,
      required this.error,
      required final List<DocumentTypeModel> documentTypes})
      : _documentTypes = documentTypes;

  @override
  final bool isFetchingDocumentTypes;
  @override
  final bool isFetchingDocumentTypesFailed;
  @override
  final bool isFetchingDocumentTypesSucces;
  @override
  final ErrorModel error;
  final List<DocumentTypeModel> _documentTypes;
  @override
  List<DocumentTypeModel> get documentTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentTypes);
  }

  @override
  String toString() {
    return 'AddDocumentState(isFetchingDocumentTypes: $isFetchingDocumentTypes, isFetchingDocumentTypesFailed: $isFetchingDocumentTypesFailed, isFetchingDocumentTypesSucces: $isFetchingDocumentTypesSucces, error: $error, documentTypes: $documentTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDocumentState &&
            const DeepCollectionEquality().equals(
                other.isFetchingDocumentTypes, isFetchingDocumentTypes) &&
            const DeepCollectionEquality().equals(
                other.isFetchingDocumentTypesFailed,
                isFetchingDocumentTypesFailed) &&
            const DeepCollectionEquality().equals(
                other.isFetchingDocumentTypesSucces,
                isFetchingDocumentTypesSucces) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._documentTypes, _documentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFetchingDocumentTypes),
      const DeepCollectionEquality().hash(isFetchingDocumentTypesFailed),
      const DeepCollectionEquality().hash(isFetchingDocumentTypesSucces),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_documentTypes));

  @JsonKey(ignore: true)
  @override
  _$$_AddDocumentStateCopyWith<_$_AddDocumentState> get copyWith =>
      __$$_AddDocumentStateCopyWithImpl<_$_AddDocumentState>(this, _$identity);
}

abstract class _AddDocumentState implements AddDocumentState {
  const factory _AddDocumentState(
          {required final bool isFetchingDocumentTypes,
          required final bool isFetchingDocumentTypesFailed,
          required final bool isFetchingDocumentTypesSucces,
          required final ErrorModel error,
          required final List<DocumentTypeModel> documentTypes}) =
      _$_AddDocumentState;

  @override
  bool get isFetchingDocumentTypes;
  @override
  bool get isFetchingDocumentTypesFailed;
  @override
  bool get isFetchingDocumentTypesSucces;
  @override
  ErrorModel get error;
  @override
  List<DocumentTypeModel> get documentTypes;
  @override
  @JsonKey(ignore: true)
  _$$_AddDocumentStateCopyWith<_$_AddDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}
