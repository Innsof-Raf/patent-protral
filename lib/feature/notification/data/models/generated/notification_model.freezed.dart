// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

@JsonKey(name: 'date') String get date;@JsonKey(name: 'month') String get month;@JsonKey(name: 'title') String get title;@JsonKey(name: 'subtitle') String get subtitle;@JsonKey(name: 'description') String get description;@JsonKey(name: 'isRead') bool get isRead;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,month,title,subtitle,description,isRead);

@override
String toString() {
  return 'NotificationModel(date: $date, month: $month, title: $title, subtitle: $subtitle, description: $description, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'month') String month,@JsonKey(name: 'title') String title,@JsonKey(name: 'subtitle') String subtitle,@JsonKey(name: 'description') String description,@JsonKey(name: 'isRead') bool isRead
});




}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? month = null,Object? title = null,Object? subtitle = null,Object? description = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'month')  String month, @JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle, @JsonKey(name: 'description')  String description, @JsonKey(name: 'isRead')  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.date,_that.month,_that.title,_that.subtitle,_that.description,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'month')  String month, @JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle, @JsonKey(name: 'description')  String description, @JsonKey(name: 'isRead')  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.date,_that.month,_that.title,_that.subtitle,_that.description,_that.isRead);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'month')  String month, @JsonKey(name: 'title')  String title, @JsonKey(name: 'subtitle')  String subtitle, @JsonKey(name: 'description')  String description, @JsonKey(name: 'isRead')  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.date,_that.month,_that.title,_that.subtitle,_that.description,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel extends NotificationModel {
  const _NotificationModel({@JsonKey(name: 'date') required this.date, @JsonKey(name: 'month') required this.month, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'subtitle') required this.subtitle, @JsonKey(name: 'description') required this.description, @JsonKey(name: 'isRead') this.isRead = false}): super._();
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'month') final  String month;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'subtitle') final  String subtitle;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'isRead') final  bool isRead;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.date, date) || other.date == date)&&(identical(other.month, month) || other.month == month)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,month,title,subtitle,description,isRead);

@override
String toString() {
  return 'NotificationModel(date: $date, month: $month, title: $title, subtitle: $subtitle, description: $description, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'month') String month,@JsonKey(name: 'title') String title,@JsonKey(name: 'subtitle') String subtitle,@JsonKey(name: 'description') String description,@JsonKey(name: 'isRead') bool isRead
});




}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? month = null,Object? title = null,Object? subtitle = null,Object? description = null,Object? isRead = null,}) {
  return _then(_NotificationModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
