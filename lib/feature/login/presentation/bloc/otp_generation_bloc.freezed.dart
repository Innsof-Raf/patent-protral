// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_generation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpGenerationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpGenerationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpGenerationEvent()';
}


}

/// @nodoc
class $OtpGenerationEventCopyWith<$Res>  {
$OtpGenerationEventCopyWith(OtpGenerationEvent _, $Res Function(OtpGenerationEvent) __);
}


/// Adds pattern-matching-related methods to [OtpGenerationEvent].
extension OtpGenerationEventPatterns on OtpGenerationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GenerateOtp value)?  generateOtp,TResult Function( ResentOtp value)?  resentOtp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GenerateOtp() when generateOtp != null:
return generateOtp(_that);case ResentOtp() when resentOtp != null:
return resentOtp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GenerateOtp value)  generateOtp,required TResult Function( ResentOtp value)  resentOtp,}){
final _that = this;
switch (_that) {
case GenerateOtp():
return generateOtp(_that);case ResentOtp():
return resentOtp(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GenerateOtp value)?  generateOtp,TResult? Function( ResentOtp value)?  resentOtp,}){
final _that = this;
switch (_that) {
case GenerateOtp() when generateOtp != null:
return generateOtp(_that);case ResentOtp() when resentOtp != null:
return resentOtp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mobileNumber)?  generateOtp,TResult Function()?  resentOtp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GenerateOtp() when generateOtp != null:
return generateOtp(_that.mobileNumber);case ResentOtp() when resentOtp != null:
return resentOtp();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mobileNumber)  generateOtp,required TResult Function()  resentOtp,}) {final _that = this;
switch (_that) {
case GenerateOtp():
return generateOtp(_that.mobileNumber);case ResentOtp():
return resentOtp();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mobileNumber)?  generateOtp,TResult? Function()?  resentOtp,}) {final _that = this;
switch (_that) {
case GenerateOtp() when generateOtp != null:
return generateOtp(_that.mobileNumber);case ResentOtp() when resentOtp != null:
return resentOtp();case _:
  return null;

}
}

}

/// @nodoc


class GenerateOtp implements OtpGenerationEvent {
  const GenerateOtp({required this.mobileNumber});
  

 final  String mobileNumber;

/// Create a copy of OtpGenerationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateOtpCopyWith<GenerateOtp> get copyWith => _$GenerateOtpCopyWithImpl<GenerateOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtp&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber);

@override
String toString() {
  return 'OtpGenerationEvent.generateOtp(mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GenerateOtpCopyWith<$Res> implements $OtpGenerationEventCopyWith<$Res> {
  factory $GenerateOtpCopyWith(GenerateOtp value, $Res Function(GenerateOtp) _then) = _$GenerateOtpCopyWithImpl;
@useResult
$Res call({
 String mobileNumber
});




}
/// @nodoc
class _$GenerateOtpCopyWithImpl<$Res>
    implements $GenerateOtpCopyWith<$Res> {
  _$GenerateOtpCopyWithImpl(this._self, this._then);

  final GenerateOtp _self;
  final $Res Function(GenerateOtp) _then;

/// Create a copy of OtpGenerationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,}) {
  return _then(GenerateOtp(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResentOtp implements OtpGenerationEvent {
  const ResentOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResentOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpGenerationEvent.resentOtp()';
}


}




/// @nodoc
mixin _$OtpGenerationState {

 bool get isOtpGenerating; bool get isOtpGenerationFailed; bool get isResenting; bool get isOtpResentingFailed; bool get isOtpResentingSucess; bool get isOtpGenerationSuccess; String get mobileNumber; ErrorModel get error; bool get showPasswordSection; String get idOtp;
/// Create a copy of OtpGenerationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpGenerationStateCopyWith<OtpGenerationState> get copyWith => _$OtpGenerationStateCopyWithImpl<OtpGenerationState>(this as OtpGenerationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpGenerationState&&(identical(other.isOtpGenerating, isOtpGenerating) || other.isOtpGenerating == isOtpGenerating)&&(identical(other.isOtpGenerationFailed, isOtpGenerationFailed) || other.isOtpGenerationFailed == isOtpGenerationFailed)&&(identical(other.isResenting, isResenting) || other.isResenting == isResenting)&&(identical(other.isOtpResentingFailed, isOtpResentingFailed) || other.isOtpResentingFailed == isOtpResentingFailed)&&(identical(other.isOtpResentingSucess, isOtpResentingSucess) || other.isOtpResentingSucess == isOtpResentingSucess)&&(identical(other.isOtpGenerationSuccess, isOtpGenerationSuccess) || other.isOtpGenerationSuccess == isOtpGenerationSuccess)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.error, error) || other.error == error)&&(identical(other.showPasswordSection, showPasswordSection) || other.showPasswordSection == showPasswordSection)&&(identical(other.idOtp, idOtp) || other.idOtp == idOtp));
}


@override
int get hashCode => Object.hash(runtimeType,isOtpGenerating,isOtpGenerationFailed,isResenting,isOtpResentingFailed,isOtpResentingSucess,isOtpGenerationSuccess,mobileNumber,error,showPasswordSection,idOtp);

@override
String toString() {
  return 'OtpGenerationState(isOtpGenerating: $isOtpGenerating, isOtpGenerationFailed: $isOtpGenerationFailed, isResenting: $isResenting, isOtpResentingFailed: $isOtpResentingFailed, isOtpResentingSucess: $isOtpResentingSucess, isOtpGenerationSuccess: $isOtpGenerationSuccess, mobileNumber: $mobileNumber, error: $error, showPasswordSection: $showPasswordSection, idOtp: $idOtp)';
}


}

/// @nodoc
abstract mixin class $OtpGenerationStateCopyWith<$Res>  {
  factory $OtpGenerationStateCopyWith(OtpGenerationState value, $Res Function(OtpGenerationState) _then) = _$OtpGenerationStateCopyWithImpl;
@useResult
$Res call({
 bool isOtpGenerating, bool isOtpGenerationFailed, bool isResenting, bool isOtpResentingFailed, bool isOtpResentingSucess, bool isOtpGenerationSuccess, String mobileNumber, ErrorModel error, bool showPasswordSection, String idOtp
});




}
/// @nodoc
class _$OtpGenerationStateCopyWithImpl<$Res>
    implements $OtpGenerationStateCopyWith<$Res> {
  _$OtpGenerationStateCopyWithImpl(this._self, this._then);

  final OtpGenerationState _self;
  final $Res Function(OtpGenerationState) _then;

/// Create a copy of OtpGenerationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOtpGenerating = null,Object? isOtpGenerationFailed = null,Object? isResenting = null,Object? isOtpResentingFailed = null,Object? isOtpResentingSucess = null,Object? isOtpGenerationSuccess = null,Object? mobileNumber = null,Object? error = null,Object? showPasswordSection = null,Object? idOtp = null,}) {
  return _then(_self.copyWith(
isOtpGenerating: null == isOtpGenerating ? _self.isOtpGenerating : isOtpGenerating // ignore: cast_nullable_to_non_nullable
as bool,isOtpGenerationFailed: null == isOtpGenerationFailed ? _self.isOtpGenerationFailed : isOtpGenerationFailed // ignore: cast_nullable_to_non_nullable
as bool,isResenting: null == isResenting ? _self.isResenting : isResenting // ignore: cast_nullable_to_non_nullable
as bool,isOtpResentingFailed: null == isOtpResentingFailed ? _self.isOtpResentingFailed : isOtpResentingFailed // ignore: cast_nullable_to_non_nullable
as bool,isOtpResentingSucess: null == isOtpResentingSucess ? _self.isOtpResentingSucess : isOtpResentingSucess // ignore: cast_nullable_to_non_nullable
as bool,isOtpGenerationSuccess: null == isOtpGenerationSuccess ? _self.isOtpGenerationSuccess : isOtpGenerationSuccess // ignore: cast_nullable_to_non_nullable
as bool,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,showPasswordSection: null == showPasswordSection ? _self.showPasswordSection : showPasswordSection // ignore: cast_nullable_to_non_nullable
as bool,idOtp: null == idOtp ? _self.idOtp : idOtp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpGenerationState].
extension OtpGenerationStatePatterns on OtpGenerationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpGenerationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpGenerationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpGenerationState value)  $default,){
final _that = this;
switch (_that) {
case _OtpGenerationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpGenerationState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpGenerationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isOtpGenerating,  bool isOtpGenerationFailed,  bool isResenting,  bool isOtpResentingFailed,  bool isOtpResentingSucess,  bool isOtpGenerationSuccess,  String mobileNumber,  ErrorModel error,  bool showPasswordSection,  String idOtp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpGenerationState() when $default != null:
return $default(_that.isOtpGenerating,_that.isOtpGenerationFailed,_that.isResenting,_that.isOtpResentingFailed,_that.isOtpResentingSucess,_that.isOtpGenerationSuccess,_that.mobileNumber,_that.error,_that.showPasswordSection,_that.idOtp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isOtpGenerating,  bool isOtpGenerationFailed,  bool isResenting,  bool isOtpResentingFailed,  bool isOtpResentingSucess,  bool isOtpGenerationSuccess,  String mobileNumber,  ErrorModel error,  bool showPasswordSection,  String idOtp)  $default,) {final _that = this;
switch (_that) {
case _OtpGenerationState():
return $default(_that.isOtpGenerating,_that.isOtpGenerationFailed,_that.isResenting,_that.isOtpResentingFailed,_that.isOtpResentingSucess,_that.isOtpGenerationSuccess,_that.mobileNumber,_that.error,_that.showPasswordSection,_that.idOtp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isOtpGenerating,  bool isOtpGenerationFailed,  bool isResenting,  bool isOtpResentingFailed,  bool isOtpResentingSucess,  bool isOtpGenerationSuccess,  String mobileNumber,  ErrorModel error,  bool showPasswordSection,  String idOtp)?  $default,) {final _that = this;
switch (_that) {
case _OtpGenerationState() when $default != null:
return $default(_that.isOtpGenerating,_that.isOtpGenerationFailed,_that.isResenting,_that.isOtpResentingFailed,_that.isOtpResentingSucess,_that.isOtpGenerationSuccess,_that.mobileNumber,_that.error,_that.showPasswordSection,_that.idOtp);case _:
  return null;

}
}

}

/// @nodoc


class _OtpGenerationState implements OtpGenerationState {
  const _OtpGenerationState({required this.isOtpGenerating, required this.isOtpGenerationFailed, required this.isResenting, required this.isOtpResentingFailed, required this.isOtpResentingSucess, required this.isOtpGenerationSuccess, required this.mobileNumber, required this.error, required this.showPasswordSection, required this.idOtp});
  

@override final  bool isOtpGenerating;
@override final  bool isOtpGenerationFailed;
@override final  bool isResenting;
@override final  bool isOtpResentingFailed;
@override final  bool isOtpResentingSucess;
@override final  bool isOtpGenerationSuccess;
@override final  String mobileNumber;
@override final  ErrorModel error;
@override final  bool showPasswordSection;
@override final  String idOtp;

/// Create a copy of OtpGenerationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpGenerationStateCopyWith<_OtpGenerationState> get copyWith => __$OtpGenerationStateCopyWithImpl<_OtpGenerationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpGenerationState&&(identical(other.isOtpGenerating, isOtpGenerating) || other.isOtpGenerating == isOtpGenerating)&&(identical(other.isOtpGenerationFailed, isOtpGenerationFailed) || other.isOtpGenerationFailed == isOtpGenerationFailed)&&(identical(other.isResenting, isResenting) || other.isResenting == isResenting)&&(identical(other.isOtpResentingFailed, isOtpResentingFailed) || other.isOtpResentingFailed == isOtpResentingFailed)&&(identical(other.isOtpResentingSucess, isOtpResentingSucess) || other.isOtpResentingSucess == isOtpResentingSucess)&&(identical(other.isOtpGenerationSuccess, isOtpGenerationSuccess) || other.isOtpGenerationSuccess == isOtpGenerationSuccess)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.error, error) || other.error == error)&&(identical(other.showPasswordSection, showPasswordSection) || other.showPasswordSection == showPasswordSection)&&(identical(other.idOtp, idOtp) || other.idOtp == idOtp));
}


@override
int get hashCode => Object.hash(runtimeType,isOtpGenerating,isOtpGenerationFailed,isResenting,isOtpResentingFailed,isOtpResentingSucess,isOtpGenerationSuccess,mobileNumber,error,showPasswordSection,idOtp);

@override
String toString() {
  return 'OtpGenerationState(isOtpGenerating: $isOtpGenerating, isOtpGenerationFailed: $isOtpGenerationFailed, isResenting: $isResenting, isOtpResentingFailed: $isOtpResentingFailed, isOtpResentingSucess: $isOtpResentingSucess, isOtpGenerationSuccess: $isOtpGenerationSuccess, mobileNumber: $mobileNumber, error: $error, showPasswordSection: $showPasswordSection, idOtp: $idOtp)';
}


}

/// @nodoc
abstract mixin class _$OtpGenerationStateCopyWith<$Res> implements $OtpGenerationStateCopyWith<$Res> {
  factory _$OtpGenerationStateCopyWith(_OtpGenerationState value, $Res Function(_OtpGenerationState) _then) = __$OtpGenerationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isOtpGenerating, bool isOtpGenerationFailed, bool isResenting, bool isOtpResentingFailed, bool isOtpResentingSucess, bool isOtpGenerationSuccess, String mobileNumber, ErrorModel error, bool showPasswordSection, String idOtp
});




}
/// @nodoc
class __$OtpGenerationStateCopyWithImpl<$Res>
    implements _$OtpGenerationStateCopyWith<$Res> {
  __$OtpGenerationStateCopyWithImpl(this._self, this._then);

  final _OtpGenerationState _self;
  final $Res Function(_OtpGenerationState) _then;

/// Create a copy of OtpGenerationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOtpGenerating = null,Object? isOtpGenerationFailed = null,Object? isResenting = null,Object? isOtpResentingFailed = null,Object? isOtpResentingSucess = null,Object? isOtpGenerationSuccess = null,Object? mobileNumber = null,Object? error = null,Object? showPasswordSection = null,Object? idOtp = null,}) {
  return _then(_OtpGenerationState(
isOtpGenerating: null == isOtpGenerating ? _self.isOtpGenerating : isOtpGenerating // ignore: cast_nullable_to_non_nullable
as bool,isOtpGenerationFailed: null == isOtpGenerationFailed ? _self.isOtpGenerationFailed : isOtpGenerationFailed // ignore: cast_nullable_to_non_nullable
as bool,isResenting: null == isResenting ? _self.isResenting : isResenting // ignore: cast_nullable_to_non_nullable
as bool,isOtpResentingFailed: null == isOtpResentingFailed ? _self.isOtpResentingFailed : isOtpResentingFailed // ignore: cast_nullable_to_non_nullable
as bool,isOtpResentingSucess: null == isOtpResentingSucess ? _self.isOtpResentingSucess : isOtpResentingSucess // ignore: cast_nullable_to_non_nullable
as bool,isOtpGenerationSuccess: null == isOtpGenerationSuccess ? _self.isOtpGenerationSuccess : isOtpGenerationSuccess // ignore: cast_nullable_to_non_nullable
as bool,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,showPasswordSection: null == showPasswordSection ? _self.showPasswordSection : showPasswordSection // ignore: cast_nullable_to_non_nullable
as bool,idOtp: null == idOtp ? _self.idOtp : idOtp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
