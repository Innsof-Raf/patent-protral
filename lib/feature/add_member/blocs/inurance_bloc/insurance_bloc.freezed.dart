// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InsuranceEvent {

 String get token;
/// Create a copy of InsuranceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsuranceEventCopyWith<InsuranceEvent> get copyWith => _$InsuranceEventCopyWithImpl<InsuranceEvent>(this as InsuranceEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsuranceEvent&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'InsuranceEvent(token: $token)';
}


}

/// @nodoc
abstract mixin class $InsuranceEventCopyWith<$Res>  {
  factory $InsuranceEventCopyWith(InsuranceEvent value, $Res Function(InsuranceEvent) _then) = _$InsuranceEventCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$InsuranceEventCopyWithImpl<$Res>
    implements $InsuranceEventCopyWith<$Res> {
  _$InsuranceEventCopyWithImpl(this._self, this._then);

  final InsuranceEvent _self;
  final $Res Function(InsuranceEvent) _then;

/// Create a copy of InsuranceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InsuranceEvent].
extension InsuranceEventPatterns on InsuranceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeatchInsurance value)?  featchInsurance,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeatchInsurance() when featchInsurance != null:
return featchInsurance(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeatchInsurance value)  featchInsurance,}){
final _that = this;
switch (_that) {
case FeatchInsurance():
return featchInsurance(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeatchInsurance value)?  featchInsurance,}){
final _that = this;
switch (_that) {
case FeatchInsurance() when featchInsurance != null:
return featchInsurance(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  featchInsurance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeatchInsurance() when featchInsurance != null:
return featchInsurance(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  featchInsurance,}) {final _that = this;
switch (_that) {
case FeatchInsurance():
return featchInsurance(_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  featchInsurance,}) {final _that = this;
switch (_that) {
case FeatchInsurance() when featchInsurance != null:
return featchInsurance(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class FeatchInsurance implements InsuranceEvent {
  const FeatchInsurance({required this.token});
  

@override final  String token;

/// Create a copy of InsuranceEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatchInsuranceCopyWith<FeatchInsurance> get copyWith => _$FeatchInsuranceCopyWithImpl<FeatchInsurance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatchInsurance&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'InsuranceEvent.featchInsurance(token: $token)';
}


}

/// @nodoc
abstract mixin class $FeatchInsuranceCopyWith<$Res> implements $InsuranceEventCopyWith<$Res> {
  factory $FeatchInsuranceCopyWith(FeatchInsurance value, $Res Function(FeatchInsurance) _then) = _$FeatchInsuranceCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class _$FeatchInsuranceCopyWithImpl<$Res>
    implements $FeatchInsuranceCopyWith<$Res> {
  _$FeatchInsuranceCopyWithImpl(this._self, this._then);

  final FeatchInsurance _self;
  final $Res Function(FeatchInsurance) _then;

/// Create a copy of InsuranceEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(FeatchInsurance(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$InsuranceState {

 bool get isFetchingInsurances; bool get isInsuranceFecthingFailed; bool get isInsuranceFechingSuccess; List<InsuranceModel> get insurances; ErrorModel get error;
/// Create a copy of InsuranceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsuranceStateCopyWith<InsuranceState> get copyWith => _$InsuranceStateCopyWithImpl<InsuranceState>(this as InsuranceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsuranceState&&(identical(other.isFetchingInsurances, isFetchingInsurances) || other.isFetchingInsurances == isFetchingInsurances)&&(identical(other.isInsuranceFecthingFailed, isInsuranceFecthingFailed) || other.isInsuranceFecthingFailed == isInsuranceFecthingFailed)&&(identical(other.isInsuranceFechingSuccess, isInsuranceFechingSuccess) || other.isInsuranceFechingSuccess == isInsuranceFechingSuccess)&&const DeepCollectionEquality().equals(other.insurances, insurances)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingInsurances,isInsuranceFecthingFailed,isInsuranceFechingSuccess,const DeepCollectionEquality().hash(insurances),error);

@override
String toString() {
  return 'InsuranceState(isFetchingInsurances: $isFetchingInsurances, isInsuranceFecthingFailed: $isInsuranceFecthingFailed, isInsuranceFechingSuccess: $isInsuranceFechingSuccess, insurances: $insurances, error: $error)';
}


}

/// @nodoc
abstract mixin class $InsuranceStateCopyWith<$Res>  {
  factory $InsuranceStateCopyWith(InsuranceState value, $Res Function(InsuranceState) _then) = _$InsuranceStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingInsurances, bool isInsuranceFecthingFailed, bool isInsuranceFechingSuccess, List<InsuranceModel> insurances, ErrorModel error
});




}
/// @nodoc
class _$InsuranceStateCopyWithImpl<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  _$InsuranceStateCopyWithImpl(this._self, this._then);

  final InsuranceState _self;
  final $Res Function(InsuranceState) _then;

/// Create a copy of InsuranceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingInsurances = null,Object? isInsuranceFecthingFailed = null,Object? isInsuranceFechingSuccess = null,Object? insurances = null,Object? error = null,}) {
  return _then(_self.copyWith(
isFetchingInsurances: null == isFetchingInsurances ? _self.isFetchingInsurances : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFecthingFailed: null == isInsuranceFecthingFailed ? _self.isInsuranceFecthingFailed : isInsuranceFecthingFailed // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFechingSuccess: null == isInsuranceFechingSuccess ? _self.isInsuranceFechingSuccess : isInsuranceFechingSuccess // ignore: cast_nullable_to_non_nullable
as bool,insurances: null == insurances ? _self.insurances : insurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

}


/// Adds pattern-matching-related methods to [InsuranceState].
extension InsuranceStatePatterns on InsuranceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsuranceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsuranceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsuranceState value)  $default,){
final _that = this;
switch (_that) {
case _InsuranceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsuranceState value)?  $default,){
final _that = this;
switch (_that) {
case _InsuranceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingInsurances,  bool isInsuranceFecthingFailed,  bool isInsuranceFechingSuccess,  List<InsuranceModel> insurances,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsuranceState() when $default != null:
return $default(_that.isFetchingInsurances,_that.isInsuranceFecthingFailed,_that.isInsuranceFechingSuccess,_that.insurances,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingInsurances,  bool isInsuranceFecthingFailed,  bool isInsuranceFechingSuccess,  List<InsuranceModel> insurances,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _InsuranceState():
return $default(_that.isFetchingInsurances,_that.isInsuranceFecthingFailed,_that.isInsuranceFechingSuccess,_that.insurances,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingInsurances,  bool isInsuranceFecthingFailed,  bool isInsuranceFechingSuccess,  List<InsuranceModel> insurances,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _InsuranceState() when $default != null:
return $default(_that.isFetchingInsurances,_that.isInsuranceFecthingFailed,_that.isInsuranceFechingSuccess,_that.insurances,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _InsuranceState implements InsuranceState {
  const _InsuranceState({required this.isFetchingInsurances, required this.isInsuranceFecthingFailed, required this.isInsuranceFechingSuccess, required final  List<InsuranceModel> insurances, required this.error}): _insurances = insurances;
  

@override final  bool isFetchingInsurances;
@override final  bool isInsuranceFecthingFailed;
@override final  bool isInsuranceFechingSuccess;
 final  List<InsuranceModel> _insurances;
@override List<InsuranceModel> get insurances {
  if (_insurances is EqualUnmodifiableListView) return _insurances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insurances);
}

@override final  ErrorModel error;

/// Create a copy of InsuranceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsuranceStateCopyWith<_InsuranceState> get copyWith => __$InsuranceStateCopyWithImpl<_InsuranceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsuranceState&&(identical(other.isFetchingInsurances, isFetchingInsurances) || other.isFetchingInsurances == isFetchingInsurances)&&(identical(other.isInsuranceFecthingFailed, isInsuranceFecthingFailed) || other.isInsuranceFecthingFailed == isInsuranceFecthingFailed)&&(identical(other.isInsuranceFechingSuccess, isInsuranceFechingSuccess) || other.isInsuranceFechingSuccess == isInsuranceFechingSuccess)&&const DeepCollectionEquality().equals(other._insurances, _insurances)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingInsurances,isInsuranceFecthingFailed,isInsuranceFechingSuccess,const DeepCollectionEquality().hash(_insurances),error);

@override
String toString() {
  return 'InsuranceState(isFetchingInsurances: $isFetchingInsurances, isInsuranceFecthingFailed: $isInsuranceFecthingFailed, isInsuranceFechingSuccess: $isInsuranceFechingSuccess, insurances: $insurances, error: $error)';
}


}

/// @nodoc
abstract mixin class _$InsuranceStateCopyWith<$Res> implements $InsuranceStateCopyWith<$Res> {
  factory _$InsuranceStateCopyWith(_InsuranceState value, $Res Function(_InsuranceState) _then) = __$InsuranceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingInsurances, bool isInsuranceFecthingFailed, bool isInsuranceFechingSuccess, List<InsuranceModel> insurances, ErrorModel error
});




}
/// @nodoc
class __$InsuranceStateCopyWithImpl<$Res>
    implements _$InsuranceStateCopyWith<$Res> {
  __$InsuranceStateCopyWithImpl(this._self, this._then);

  final _InsuranceState _self;
  final $Res Function(_InsuranceState) _then;

/// Create a copy of InsuranceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingInsurances = null,Object? isInsuranceFecthingFailed = null,Object? isInsuranceFechingSuccess = null,Object? insurances = null,Object? error = null,}) {
  return _then(_InsuranceState(
isFetchingInsurances: null == isFetchingInsurances ? _self.isFetchingInsurances : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFecthingFailed: null == isInsuranceFecthingFailed ? _self.isInsuranceFecthingFailed : isInsuranceFecthingFailed // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFechingSuccess: null == isInsuranceFechingSuccess ? _self.isInsuranceFechingSuccess : isInsuranceFechingSuccess // ignore: cast_nullable_to_non_nullable
as bool,insurances: null == insurances ? _self._insurances : insurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

// dart format on
