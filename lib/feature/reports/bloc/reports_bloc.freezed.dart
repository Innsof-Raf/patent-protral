// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsEvent {

 int get memberId; String get token; String get mobileNumber;
/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsEventCopyWith<ReportsEvent> get copyWith => _$ReportsEventCopyWithImpl<ReportsEvent>(this as ReportsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsEvent&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,token,mobileNumber);

@override
String toString() {
  return 'ReportsEvent(memberId: $memberId, token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $ReportsEventCopyWith<$Res>  {
  factory $ReportsEventCopyWith(ReportsEvent value, $Res Function(ReportsEvent) _then) = _$ReportsEventCopyWithImpl;
@useResult
$Res call({
 int memberId, String token, String mobileNumber
});




}
/// @nodoc
class _$ReportsEventCopyWithImpl<$Res>
    implements $ReportsEventCopyWith<$Res> {
  _$ReportsEventCopyWithImpl(this._self, this._then);

  final ReportsEvent _self;
  final $Res Function(ReportsEvent) _then;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? token = null,Object? mobileNumber = null,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportsEvent].
extension ReportsEventPatterns on ReportsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetReports value)?  getReports,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetReports value)  getReports,}){
final _that = this;
switch (_that) {
case GetReports():
return getReports(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetReports value)?  getReports,}){
final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int memberId,  String token,  String mobileNumber)?  getReports,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int memberId,  String token,  String mobileNumber)  getReports,}) {final _that = this;
switch (_that) {
case GetReports():
return getReports(_that.memberId,_that.token,_that.mobileNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int memberId,  String token,  String mobileNumber)?  getReports,}) {final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that.memberId,_that.token,_that.mobileNumber);case _:
  return null;

}
}

}

/// @nodoc


class GetReports implements ReportsEvent {
  const GetReports({required this.memberId, required this.token, required this.mobileNumber});
  

@override final  int memberId;
@override final  String token;
@override final  String mobileNumber;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReportsCopyWith<GetReports> get copyWith => _$GetReportsCopyWithImpl<GetReports>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReports&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,token,mobileNumber);

@override
String toString() {
  return 'ReportsEvent.getReports(memberId: $memberId, token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GetReportsCopyWith<$Res> implements $ReportsEventCopyWith<$Res> {
  factory $GetReportsCopyWith(GetReports value, $Res Function(GetReports) _then) = _$GetReportsCopyWithImpl;
@override @useResult
$Res call({
 int memberId, String token, String mobileNumber
});




}
/// @nodoc
class _$GetReportsCopyWithImpl<$Res>
    implements $GetReportsCopyWith<$Res> {
  _$GetReportsCopyWithImpl(this._self, this._then);

  final GetReports _self;
  final $Res Function(GetReports) _then;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? token = null,Object? mobileNumber = null,}) {
  return _then(GetReports(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ReportsState {

 bool get isFetchingReports; bool get isFetchingFailed; bool get isFetchingSuccess; ErrorModel get error; int get selectedMemberId; List<ReportModel> get reports;
/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsStateCopyWith<ReportsState> get copyWith => _$ReportsStateCopyWithImpl<ReportsState>(this as ReportsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsState&&(identical(other.isFetchingReports, isFetchingReports) || other.isFetchingReports == isFetchingReports)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId)&&const DeepCollectionEquality().equals(other.reports, reports));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingReports,isFetchingFailed,isFetchingSuccess,error,selectedMemberId,const DeepCollectionEquality().hash(reports));

@override
String toString() {
  return 'ReportsState(isFetchingReports: $isFetchingReports, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, error: $error, selectedMemberId: $selectedMemberId, reports: $reports)';
}


}

/// @nodoc
abstract mixin class $ReportsStateCopyWith<$Res>  {
  factory $ReportsStateCopyWith(ReportsState value, $Res Function(ReportsState) _then) = _$ReportsStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingReports, bool isFetchingFailed, bool isFetchingSuccess, ErrorModel error, int selectedMemberId, List<ReportModel> reports
});




}
/// @nodoc
class _$ReportsStateCopyWithImpl<$Res>
    implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._self, this._then);

  final ReportsState _self;
  final $Res Function(ReportsState) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingReports = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? error = null,Object? selectedMemberId = null,Object? reports = null,}) {
  return _then(_self.copyWith(
isFetchingReports: null == isFetchingReports ? _self.isFetchingReports : isFetchingReports // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,reports: null == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportsState].
extension ReportsStatePatterns on ReportsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportsState value)  $default,){
final _that = this;
switch (_that) {
case _ReportsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportsState value)?  $default,){
final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error,  int selectedMemberId,  List<ReportModel> reports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error,_that.selectedMemberId,_that.reports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error,  int selectedMemberId,  List<ReportModel> reports)  $default,) {final _that = this;
switch (_that) {
case _ReportsState():
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error,_that.selectedMemberId,_that.reports);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error,  int selectedMemberId,  List<ReportModel> reports)?  $default,) {final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error,_that.selectedMemberId,_that.reports);case _:
  return null;

}
}

}

/// @nodoc


class _ReportsState implements ReportsState {
  const _ReportsState({required this.isFetchingReports, required this.isFetchingFailed, required this.isFetchingSuccess, required this.error, required this.selectedMemberId, required final  List<ReportModel> reports}): _reports = reports;
  

@override final  bool isFetchingReports;
@override final  bool isFetchingFailed;
@override final  bool isFetchingSuccess;
@override final  ErrorModel error;
@override final  int selectedMemberId;
 final  List<ReportModel> _reports;
@override List<ReportModel> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}


/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportsStateCopyWith<_ReportsState> get copyWith => __$ReportsStateCopyWithImpl<_ReportsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportsState&&(identical(other.isFetchingReports, isFetchingReports) || other.isFetchingReports == isFetchingReports)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId)&&const DeepCollectionEquality().equals(other._reports, _reports));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingReports,isFetchingFailed,isFetchingSuccess,error,selectedMemberId,const DeepCollectionEquality().hash(_reports));

@override
String toString() {
  return 'ReportsState(isFetchingReports: $isFetchingReports, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, error: $error, selectedMemberId: $selectedMemberId, reports: $reports)';
}


}

/// @nodoc
abstract mixin class _$ReportsStateCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$ReportsStateCopyWith(_ReportsState value, $Res Function(_ReportsState) _then) = __$ReportsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingReports, bool isFetchingFailed, bool isFetchingSuccess, ErrorModel error, int selectedMemberId, List<ReportModel> reports
});




}
/// @nodoc
class __$ReportsStateCopyWithImpl<$Res>
    implements _$ReportsStateCopyWith<$Res> {
  __$ReportsStateCopyWithImpl(this._self, this._then);

  final _ReportsState _self;
  final $Res Function(_ReportsState) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingReports = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? error = null,Object? selectedMemberId = null,Object? reports = null,}) {
  return _then(_ReportsState(
isFetchingReports: null == isFetchingReports ? _self.isFetchingReports : isFetchingReports // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,reports: null == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportModel>,
  ));
}


}

// dart format on
