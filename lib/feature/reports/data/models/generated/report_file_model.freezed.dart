// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../report_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportFileModel {

 Uint8List get bytes;
/// Create a copy of ReportFileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportFileModelCopyWith<ReportFileModel> get copyWith => _$ReportFileModelCopyWithImpl<ReportFileModel>(this as ReportFileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportFileModel&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'ReportFileModel(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $ReportFileModelCopyWith<$Res>  {
  factory $ReportFileModelCopyWith(ReportFileModel value, $Res Function(ReportFileModel) _then) = _$ReportFileModelCopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$ReportFileModelCopyWithImpl<$Res>
    implements $ReportFileModelCopyWith<$Res> {
  _$ReportFileModelCopyWithImpl(this._self, this._then);

  final ReportFileModel _self;
  final $Res Function(ReportFileModel) _then;

/// Create a copy of ReportFileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bytes = null,}) {
  return _then(_self.copyWith(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportFileModel].
extension ReportFileModelPatterns on ReportFileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportFileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportFileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportFileModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportFileModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportFileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportFileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uint8List bytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportFileModel() when $default != null:
return $default(_that.bytes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uint8List bytes)  $default,) {final _that = this;
switch (_that) {
case _ReportFileModel():
return $default(_that.bytes);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uint8List bytes)?  $default,) {final _that = this;
switch (_that) {
case _ReportFileModel() when $default != null:
return $default(_that.bytes);case _:
  return null;

}
}

}

/// @nodoc


class _ReportFileModel extends ReportFileModel {
  const _ReportFileModel({required this.bytes}): super._();
  

@override final  Uint8List bytes;

/// Create a copy of ReportFileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportFileModelCopyWith<_ReportFileModel> get copyWith => __$ReportFileModelCopyWithImpl<_ReportFileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportFileModel&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'ReportFileModel(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class _$ReportFileModelCopyWith<$Res> implements $ReportFileModelCopyWith<$Res> {
  factory _$ReportFileModelCopyWith(_ReportFileModel value, $Res Function(_ReportFileModel) _then) = __$ReportFileModelCopyWithImpl;
@override @useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class __$ReportFileModelCopyWithImpl<$Res>
    implements _$ReportFileModelCopyWith<$Res> {
  __$ReportFileModelCopyWithImpl(this._self, this._then);

  final _ReportFileModel _self;
  final $Res Function(_ReportFileModel) _then;

/// Create a copy of ReportFileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(_ReportFileModel(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
