// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentsEvent {
  int get memberId => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String mobileNumber, String token)
        getDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String mobileNumber, String token)?
        getDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String mobileNumber, String token)?
        getDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDocuments value) getDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDocuments value)? getDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDocuments value)? getDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentsEventCopyWith<DocumentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsEventCopyWith<$Res> {
  factory $DocumentsEventCopyWith(
          DocumentsEvent value, $Res Function(DocumentsEvent) then) =
      _$DocumentsEventCopyWithImpl<$Res>;
  $Res call({int memberId, String mobileNumber, String token});
}

/// @nodoc
class _$DocumentsEventCopyWithImpl<$Res>
    implements $DocumentsEventCopyWith<$Res> {
  _$DocumentsEventCopyWithImpl(this._value, this._then);

  final DocumentsEvent _value;
  // ignore: unused_field
  final $Res Function(DocumentsEvent) _then;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? mobileNumber = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetDocumentsCopyWith<$Res>
    implements $DocumentsEventCopyWith<$Res> {
  factory _$$GetDocumentsCopyWith(
          _$GetDocuments value, $Res Function(_$GetDocuments) then) =
      __$$GetDocumentsCopyWithImpl<$Res>;
  @override
  $Res call({int memberId, String mobileNumber, String token});
}

/// @nodoc
class __$$GetDocumentsCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res>
    implements _$$GetDocumentsCopyWith<$Res> {
  __$$GetDocumentsCopyWithImpl(
      _$GetDocuments _value, $Res Function(_$GetDocuments) _then)
      : super(_value, (v) => _then(v as _$GetDocuments));

  @override
  _$GetDocuments get _value => super._value as _$GetDocuments;

  @override
  $Res call({
    Object? memberId = freezed,
    Object? mobileNumber = freezed,
    Object? token = freezed,
  }) {
    return _then(_$GetDocuments(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDocuments implements GetDocuments {
  const _$GetDocuments(
      {required this.memberId,
      required this.mobileNumber,
      required this.token});

  @override
  final int memberId;
  @override
  final String mobileNumber;
  @override
  final String token;

  @override
  String toString() {
    return 'DocumentsEvent.getDocuments(memberId: $memberId, mobileNumber: $mobileNumber, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocuments &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetDocumentsCopyWith<_$GetDocuments> get copyWith =>
      __$$GetDocumentsCopyWithImpl<_$GetDocuments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId, String mobileNumber, String token)
        getDocuments,
  }) {
    return getDocuments(memberId, mobileNumber, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId, String mobileNumber, String token)?
        getDocuments,
  }) {
    return getDocuments?.call(memberId, mobileNumber, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId, String mobileNumber, String token)?
        getDocuments,
    required TResult orElse(),
  }) {
    if (getDocuments != null) {
      return getDocuments(memberId, mobileNumber, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDocuments value) getDocuments,
  }) {
    return getDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDocuments value)? getDocuments,
  }) {
    return getDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDocuments value)? getDocuments,
    required TResult orElse(),
  }) {
    if (getDocuments != null) {
      return getDocuments(this);
    }
    return orElse();
  }
}

abstract class GetDocuments implements DocumentsEvent {
  const factory GetDocuments(
      {required final int memberId,
      required final String mobileNumber,
      required final String token}) = _$GetDocuments;

  @override
  int get memberId;
  @override
  String get mobileNumber;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$GetDocumentsCopyWith<_$GetDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentsState {
  List<DocumentModel> get documents => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingFailed => throw _privateConstructorUsedError;
  bool get isFetchingSucces => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  int get selectedMemberId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentsStateCopyWith<DocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
          DocumentsState value, $Res Function(DocumentsState) then) =
      _$DocumentsStateCopyWithImpl<$Res>;
  $Res call(
      {List<DocumentModel> documents,
      bool isFetching,
      bool isFetchingFailed,
      bool isFetchingSucces,
      ErrorModel error,
      int selectedMemberId});
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  final DocumentsState _value;
  // ignore: unused_field
  final $Res Function(DocumentsState) _then;

  @override
  $Res call({
    Object? documents = freezed,
    Object? isFetching = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSucces = freezed,
    Object? error = freezed,
    Object? selectedMemberId = freezed,
  }) {
    return _then(_value.copyWith(
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
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
      selectedMemberId: selectedMemberId == freezed
          ? _value.selectedMemberId
          : selectedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentsStateCopyWith<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  factory _$$_DocumentsStateCopyWith(
          _$_DocumentsState value, $Res Function(_$_DocumentsState) then) =
      __$$_DocumentsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DocumentModel> documents,
      bool isFetching,
      bool isFetchingFailed,
      bool isFetchingSucces,
      ErrorModel error,
      int selectedMemberId});
}

/// @nodoc
class __$$_DocumentsStateCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res>
    implements _$$_DocumentsStateCopyWith<$Res> {
  __$$_DocumentsStateCopyWithImpl(
      _$_DocumentsState _value, $Res Function(_$_DocumentsState) _then)
      : super(_value, (v) => _then(v as _$_DocumentsState));

  @override
  _$_DocumentsState get _value => super._value as _$_DocumentsState;

  @override
  $Res call({
    Object? documents = freezed,
    Object? isFetching = freezed,
    Object? isFetchingFailed = freezed,
    Object? isFetchingSucces = freezed,
    Object? error = freezed,
    Object? selectedMemberId = freezed,
  }) {
    return _then(_$_DocumentsState(
      documents: documents == freezed
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
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
      selectedMemberId: selectedMemberId == freezed
          ? _value.selectedMemberId
          : selectedMemberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DocumentsState implements _DocumentsState {
  const _$_DocumentsState(
      {required final List<DocumentModel> documents,
      required this.isFetching,
      required this.isFetchingFailed,
      required this.isFetchingSucces,
      required this.error,
      required this.selectedMemberId})
      : _documents = documents;

  final List<DocumentModel> _documents;
  @override
  List<DocumentModel> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final bool isFetching;
  @override
  final bool isFetchingFailed;
  @override
  final bool isFetchingSucces;
  @override
  final ErrorModel error;
  @override
  final int selectedMemberId;

  @override
  String toString() {
    return 'DocumentsState(documents: $documents, isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSucces: $isFetchingSucces, error: $error, selectedMemberId: $selectedMemberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentsState &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingFailed, isFetchingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingSucces, isFetchingSucces) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.selectedMemberId, selectedMemberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(isFetchingFailed),
      const DeepCollectionEquality().hash(isFetchingSucces),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(selectedMemberId));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentsStateCopyWith<_$_DocumentsState> get copyWith =>
      __$$_DocumentsStateCopyWithImpl<_$_DocumentsState>(this, _$identity);
}

abstract class _DocumentsState implements DocumentsState {
  const factory _DocumentsState(
      {required final List<DocumentModel> documents,
      required final bool isFetching,
      required final bool isFetchingFailed,
      required final bool isFetchingSucces,
      required final ErrorModel error,
      required final int selectedMemberId}) = _$_DocumentsState;

  @override
  List<DocumentModel> get documents;
  @override
  bool get isFetching;
  @override
  bool get isFetchingFailed;
  @override
  bool get isFetchingSucces;
  @override
  ErrorModel get error;
  @override
  int get selectedMemberId;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentsStateCopyWith<_$_DocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
