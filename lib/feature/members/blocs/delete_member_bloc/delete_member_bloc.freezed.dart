// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteMemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId) updateSelectedMemberList,
    required TResult Function() clearSelectedMemberList,
    required TResult Function(List<int> membersIdList) selectAllMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSelectedMemberList value)
        updateSelectedMemberList,
    required TResult Function(ClearSelectedMemberList value)
        clearSelectedMemberList,
    required TResult Function(SelectAllMembers value) selectAllMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMemberEventCopyWith<$Res> {
  factory $DeleteMemberEventCopyWith(
          DeleteMemberEvent value, $Res Function(DeleteMemberEvent) then) =
      _$DeleteMemberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteMemberEventCopyWithImpl<$Res>
    implements $DeleteMemberEventCopyWith<$Res> {
  _$DeleteMemberEventCopyWithImpl(this._value, this._then);

  final DeleteMemberEvent _value;
  // ignore: unused_field
  final $Res Function(DeleteMemberEvent) _then;
}

/// @nodoc
abstract class _$$UpdateSelectedMemberListCopyWith<$Res> {
  factory _$$UpdateSelectedMemberListCopyWith(_$UpdateSelectedMemberList value,
          $Res Function(_$UpdateSelectedMemberList) then) =
      __$$UpdateSelectedMemberListCopyWithImpl<$Res>;
  $Res call({int memberId});
}

/// @nodoc
class __$$UpdateSelectedMemberListCopyWithImpl<$Res>
    extends _$DeleteMemberEventCopyWithImpl<$Res>
    implements _$$UpdateSelectedMemberListCopyWith<$Res> {
  __$$UpdateSelectedMemberListCopyWithImpl(_$UpdateSelectedMemberList _value,
      $Res Function(_$UpdateSelectedMemberList) _then)
      : super(_value, (v) => _then(v as _$UpdateSelectedMemberList));

  @override
  _$UpdateSelectedMemberList get _value =>
      super._value as _$UpdateSelectedMemberList;

  @override
  $Res call({
    Object? memberId = freezed,
  }) {
    return _then(_$UpdateSelectedMemberList(
      memberId: memberId == freezed
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedMemberList implements UpdateSelectedMemberList {
  const _$UpdateSelectedMemberList({required this.memberId});

  @override
  final int memberId;

  @override
  String toString() {
    return 'DeleteMemberEvent.updateSelectedMemberList(memberId: $memberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedMemberList &&
            const DeepCollectionEquality().equals(other.memberId, memberId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(memberId));

  @JsonKey(ignore: true)
  @override
  _$$UpdateSelectedMemberListCopyWith<_$UpdateSelectedMemberList>
      get copyWith =>
          __$$UpdateSelectedMemberListCopyWithImpl<_$UpdateSelectedMemberList>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId) updateSelectedMemberList,
    required TResult Function() clearSelectedMemberList,
    required TResult Function(List<int> membersIdList) selectAllMembers,
  }) {
    return updateSelectedMemberList(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
  }) {
    return updateSelectedMemberList?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (updateSelectedMemberList != null) {
      return updateSelectedMemberList(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSelectedMemberList value)
        updateSelectedMemberList,
    required TResult Function(ClearSelectedMemberList value)
        clearSelectedMemberList,
    required TResult Function(SelectAllMembers value) selectAllMembers,
  }) {
    return updateSelectedMemberList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
  }) {
    return updateSelectedMemberList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (updateSelectedMemberList != null) {
      return updateSelectedMemberList(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedMemberList implements DeleteMemberEvent {
  const factory UpdateSelectedMemberList({required final int memberId}) =
      _$UpdateSelectedMemberList;

  int get memberId;
  @JsonKey(ignore: true)
  _$$UpdateSelectedMemberListCopyWith<_$UpdateSelectedMemberList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectedMemberListCopyWith<$Res> {
  factory _$$ClearSelectedMemberListCopyWith(_$ClearSelectedMemberList value,
          $Res Function(_$ClearSelectedMemberList) then) =
      __$$ClearSelectedMemberListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectedMemberListCopyWithImpl<$Res>
    extends _$DeleteMemberEventCopyWithImpl<$Res>
    implements _$$ClearSelectedMemberListCopyWith<$Res> {
  __$$ClearSelectedMemberListCopyWithImpl(_$ClearSelectedMemberList _value,
      $Res Function(_$ClearSelectedMemberList) _then)
      : super(_value, (v) => _then(v as _$ClearSelectedMemberList));

  @override
  _$ClearSelectedMemberList get _value =>
      super._value as _$ClearSelectedMemberList;
}

/// @nodoc

class _$ClearSelectedMemberList implements ClearSelectedMemberList {
  const _$ClearSelectedMemberList();

  @override
  String toString() {
    return 'DeleteMemberEvent.clearSelectedMemberList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectedMemberList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId) updateSelectedMemberList,
    required TResult Function() clearSelectedMemberList,
    required TResult Function(List<int> membersIdList) selectAllMembers,
  }) {
    return clearSelectedMemberList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
  }) {
    return clearSelectedMemberList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (clearSelectedMemberList != null) {
      return clearSelectedMemberList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSelectedMemberList value)
        updateSelectedMemberList,
    required TResult Function(ClearSelectedMemberList value)
        clearSelectedMemberList,
    required TResult Function(SelectAllMembers value) selectAllMembers,
  }) {
    return clearSelectedMemberList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
  }) {
    return clearSelectedMemberList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (clearSelectedMemberList != null) {
      return clearSelectedMemberList(this);
    }
    return orElse();
  }
}

abstract class ClearSelectedMemberList implements DeleteMemberEvent {
  const factory ClearSelectedMemberList() = _$ClearSelectedMemberList;
}

/// @nodoc
abstract class _$$SelectAllMembersCopyWith<$Res> {
  factory _$$SelectAllMembersCopyWith(
          _$SelectAllMembers value, $Res Function(_$SelectAllMembers) then) =
      __$$SelectAllMembersCopyWithImpl<$Res>;
  $Res call({List<int> membersIdList});
}

/// @nodoc
class __$$SelectAllMembersCopyWithImpl<$Res>
    extends _$DeleteMemberEventCopyWithImpl<$Res>
    implements _$$SelectAllMembersCopyWith<$Res> {
  __$$SelectAllMembersCopyWithImpl(
      _$SelectAllMembers _value, $Res Function(_$SelectAllMembers) _then)
      : super(_value, (v) => _then(v as _$SelectAllMembers));

  @override
  _$SelectAllMembers get _value => super._value as _$SelectAllMembers;

  @override
  $Res call({
    Object? membersIdList = freezed,
  }) {
    return _then(_$SelectAllMembers(
      membersIdList: membersIdList == freezed
          ? _value._membersIdList
          : membersIdList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SelectAllMembers implements SelectAllMembers {
  const _$SelectAllMembers({required final List<int> membersIdList})
      : _membersIdList = membersIdList;

  final List<int> _membersIdList;
  @override
  List<int> get membersIdList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersIdList);
  }

  @override
  String toString() {
    return 'DeleteMemberEvent.selectAllMembers(membersIdList: $membersIdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllMembers &&
            const DeepCollectionEquality()
                .equals(other._membersIdList, _membersIdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_membersIdList));

  @JsonKey(ignore: true)
  @override
  _$$SelectAllMembersCopyWith<_$SelectAllMembers> get copyWith =>
      __$$SelectAllMembersCopyWithImpl<_$SelectAllMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int memberId) updateSelectedMemberList,
    required TResult Function() clearSelectedMemberList,
    required TResult Function(List<int> membersIdList) selectAllMembers,
  }) {
    return selectAllMembers(membersIdList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
  }) {
    return selectAllMembers?.call(membersIdList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int memberId)? updateSelectedMemberList,
    TResult Function()? clearSelectedMemberList,
    TResult Function(List<int> membersIdList)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (selectAllMembers != null) {
      return selectAllMembers(membersIdList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateSelectedMemberList value)
        updateSelectedMemberList,
    required TResult Function(ClearSelectedMemberList value)
        clearSelectedMemberList,
    required TResult Function(SelectAllMembers value) selectAllMembers,
  }) {
    return selectAllMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
  }) {
    return selectAllMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateSelectedMemberList value)? updateSelectedMemberList,
    TResult Function(ClearSelectedMemberList value)? clearSelectedMemberList,
    TResult Function(SelectAllMembers value)? selectAllMembers,
    required TResult orElse(),
  }) {
    if (selectAllMembers != null) {
      return selectAllMembers(this);
    }
    return orElse();
  }
}

abstract class SelectAllMembers implements DeleteMemberEvent {
  const factory SelectAllMembers({required final List<int> membersIdList}) =
      _$SelectAllMembers;

  List<int> get membersIdList;
  @JsonKey(ignore: true)
  _$$SelectAllMembersCopyWith<_$SelectAllMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteMemberState {
  List<int> get selectedMebersList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteMemberStateCopyWith<DeleteMemberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMemberStateCopyWith<$Res> {
  factory $DeleteMemberStateCopyWith(
          DeleteMemberState value, $Res Function(DeleteMemberState) then) =
      _$DeleteMemberStateCopyWithImpl<$Res>;
  $Res call({List<int> selectedMebersList});
}

/// @nodoc
class _$DeleteMemberStateCopyWithImpl<$Res>
    implements $DeleteMemberStateCopyWith<$Res> {
  _$DeleteMemberStateCopyWithImpl(this._value, this._then);

  final DeleteMemberState _value;
  // ignore: unused_field
  final $Res Function(DeleteMemberState) _then;

  @override
  $Res call({
    Object? selectedMebersList = freezed,
  }) {
    return _then(_value.copyWith(
      selectedMebersList: selectedMebersList == freezed
          ? _value.selectedMebersList
          : selectedMebersList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_DeleteMemberStateCopyWith<$Res>
    implements $DeleteMemberStateCopyWith<$Res> {
  factory _$$_DeleteMemberStateCopyWith(_$_DeleteMemberState value,
          $Res Function(_$_DeleteMemberState) then) =
      __$$_DeleteMemberStateCopyWithImpl<$Res>;
  @override
  $Res call({List<int> selectedMebersList});
}

/// @nodoc
class __$$_DeleteMemberStateCopyWithImpl<$Res>
    extends _$DeleteMemberStateCopyWithImpl<$Res>
    implements _$$_DeleteMemberStateCopyWith<$Res> {
  __$$_DeleteMemberStateCopyWithImpl(
      _$_DeleteMemberState _value, $Res Function(_$_DeleteMemberState) _then)
      : super(_value, (v) => _then(v as _$_DeleteMemberState));

  @override
  _$_DeleteMemberState get _value => super._value as _$_DeleteMemberState;

  @override
  $Res call({
    Object? selectedMebersList = freezed,
  }) {
    return _then(_$_DeleteMemberState(
      selectedMebersList: selectedMebersList == freezed
          ? _value._selectedMebersList
          : selectedMebersList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_DeleteMemberState implements _DeleteMemberState {
  const _$_DeleteMemberState({required final List<int> selectedMebersList})
      : _selectedMebersList = selectedMebersList;

  final List<int> _selectedMebersList;
  @override
  List<int> get selectedMebersList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMebersList);
  }

  @override
  String toString() {
    return 'DeleteMemberState(selectedMebersList: $selectedMebersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteMemberState &&
            const DeepCollectionEquality()
                .equals(other._selectedMebersList, _selectedMebersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedMebersList));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteMemberStateCopyWith<_$_DeleteMemberState> get copyWith =>
      __$$_DeleteMemberStateCopyWithImpl<_$_DeleteMemberState>(
          this, _$identity);
}

abstract class _DeleteMemberState implements DeleteMemberState {
  const factory _DeleteMemberState(
      {required final List<int> selectedMebersList}) = _$_DeleteMemberState;

  @override
  List<int> get selectedMebersList;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteMemberStateCopyWith<_$_DeleteMemberState> get copyWith =>
      throw _privateConstructorUsedError;
}
