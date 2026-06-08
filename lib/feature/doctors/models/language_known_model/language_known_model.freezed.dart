// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_known_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageKnownModel {

@JsonKey(name: 'lang_cd') String get lng;
/// Create a copy of LanguageKnownModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageKnownModelCopyWith<LanguageKnownModel> get copyWith => _$LanguageKnownModelCopyWithImpl<LanguageKnownModel>(this as LanguageKnownModel, _$identity);

  /// Serializes this LanguageKnownModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageKnownModel&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lng);

@override
String toString() {
  return 'LanguageKnownModel(lng: $lng)';
}


}

/// @nodoc
abstract mixin class $LanguageKnownModelCopyWith<$Res>  {
  factory $LanguageKnownModelCopyWith(LanguageKnownModel value, $Res Function(LanguageKnownModel) _then) = _$LanguageKnownModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lang_cd') String lng
});




}
/// @nodoc
class _$LanguageKnownModelCopyWithImpl<$Res>
    implements $LanguageKnownModelCopyWith<$Res> {
  _$LanguageKnownModelCopyWithImpl(this._self, this._then);

  final LanguageKnownModel _self;
  final $Res Function(LanguageKnownModel) _then;

/// Create a copy of LanguageKnownModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lng = null,}) {
  return _then(_self.copyWith(
lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageKnownModel].
extension LanguageKnownModelPatterns on LanguageKnownModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageKnownModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageKnownModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageKnownModel value)  $default,){
final _that = this;
switch (_that) {
case _LanguageKnownModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageKnownModel value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageKnownModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lang_cd')  String lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageKnownModel() when $default != null:
return $default(_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lang_cd')  String lng)  $default,) {final _that = this;
switch (_that) {
case _LanguageKnownModel():
return $default(_that.lng);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lang_cd')  String lng)?  $default,) {final _that = this;
switch (_that) {
case _LanguageKnownModel() when $default != null:
return $default(_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageKnownModel implements LanguageKnownModel {
  const _LanguageKnownModel({@JsonKey(name: 'lang_cd') required this.lng});
  factory _LanguageKnownModel.fromJson(Map<String, dynamic> json) => _$LanguageKnownModelFromJson(json);

@override@JsonKey(name: 'lang_cd') final  String lng;

/// Create a copy of LanguageKnownModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageKnownModelCopyWith<_LanguageKnownModel> get copyWith => __$LanguageKnownModelCopyWithImpl<_LanguageKnownModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageKnownModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageKnownModel&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lng);

@override
String toString() {
  return 'LanguageKnownModel(lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$LanguageKnownModelCopyWith<$Res> implements $LanguageKnownModelCopyWith<$Res> {
  factory _$LanguageKnownModelCopyWith(_LanguageKnownModel value, $Res Function(_LanguageKnownModel) _then) = __$LanguageKnownModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lang_cd') String lng
});




}
/// @nodoc
class __$LanguageKnownModelCopyWithImpl<$Res>
    implements _$LanguageKnownModelCopyWith<$Res> {
  __$LanguageKnownModelCopyWithImpl(this._self, this._then);

  final _LanguageKnownModel _self;
  final $Res Function(_LanguageKnownModel) _then;

/// Create a copy of LanguageKnownModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lng = null,}) {
  return _then(_LanguageKnownModel(
lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
