// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../reports_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsEvent()';
}


}

/// @nodoc
class $ReportsEventCopyWith<$Res>  {
$ReportsEventCopyWith(ReportsEvent _, $Res Function(ReportsEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetReports value)?  getReports,TResult Function( StroeRport value)?  stroeRport,TResult Function( ClearReport value)?  clearReport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that);case StroeRport() when stroeRport != null:
return stroeRport(_that);case ClearReport() when clearReport != null:
return clearReport(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetReports value)  getReports,required TResult Function( StroeRport value)  stroeRport,required TResult Function( ClearReport value)  clearReport,}){
final _that = this;
switch (_that) {
case GetReports():
return getReports(_that);case StroeRport():
return stroeRport(_that);case ClearReport():
return clearReport(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetReports value)?  getReports,TResult? Function( StroeRport value)?  stroeRport,TResult? Function( ClearReport value)?  clearReport,}){
final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that);case StroeRport() when stroeRport != null:
return stroeRport(_that);case ClearReport() when clearReport != null:
return clearReport(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ReportsParams params)?  getReports,TResult Function( ReportsParams params)?  stroeRport,TResult Function()?  clearReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that.params);case StroeRport() when stroeRport != null:
return stroeRport(_that.params);case ClearReport() when clearReport != null:
return clearReport();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ReportsParams params)  getReports,required TResult Function( ReportsParams params)  stroeRport,required TResult Function()  clearReport,}) {final _that = this;
switch (_that) {
case GetReports():
return getReports(_that.params);case StroeRport():
return stroeRport(_that.params);case ClearReport():
return clearReport();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ReportsParams params)?  getReports,TResult? Function( ReportsParams params)?  stroeRport,TResult? Function()?  clearReport,}) {final _that = this;
switch (_that) {
case GetReports() when getReports != null:
return getReports(_that.params);case StroeRport() when stroeRport != null:
return stroeRport(_that.params);case ClearReport() when clearReport != null:
return clearReport();case _:
  return null;

}
}

}

/// @nodoc


class GetReports implements ReportsEvent {
  const GetReports({required this.params});
  

 final  ReportsParams params;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReportsCopyWith<GetReports> get copyWith => _$GetReportsCopyWithImpl<GetReports>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReports&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ReportsEvent.getReports(params: $params)';
}


}

/// @nodoc
abstract mixin class $GetReportsCopyWith<$Res> implements $ReportsEventCopyWith<$Res> {
  factory $GetReportsCopyWith(GetReports value, $Res Function(GetReports) _then) = _$GetReportsCopyWithImpl;
@useResult
$Res call({
 ReportsParams params
});


$ReportsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$GetReportsCopyWithImpl<$Res>
    implements $GetReportsCopyWith<$Res> {
  _$GetReportsCopyWithImpl(this._self, this._then);

  final GetReports _self;
  final $Res Function(GetReports) _then;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(GetReports(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ReportsParams,
  ));
}

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportsParamsCopyWith<$Res> get params {
  
  return $ReportsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class StroeRport implements ReportsEvent {
  const StroeRport({required this.params});
  

 final  ReportsParams params;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StroeRportCopyWith<StroeRport> get copyWith => _$StroeRportCopyWithImpl<StroeRport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StroeRport&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ReportsEvent.stroeRport(params: $params)';
}


}

/// @nodoc
abstract mixin class $StroeRportCopyWith<$Res> implements $ReportsEventCopyWith<$Res> {
  factory $StroeRportCopyWith(StroeRport value, $Res Function(StroeRport) _then) = _$StroeRportCopyWithImpl;
@useResult
$Res call({
 ReportsParams params
});


$ReportsParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$StroeRportCopyWithImpl<$Res>
    implements $StroeRportCopyWith<$Res> {
  _$StroeRportCopyWithImpl(this._self, this._then);

  final StroeRport _self;
  final $Res Function(StroeRport) _then;

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(StroeRport(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ReportsParams,
  ));
}

/// Create a copy of ReportsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportsParamsCopyWith<$Res> get params {
  
  return $ReportsParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ClearReport implements ReportsEvent {
  const ClearReport();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearReport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReportsEvent.clearReport()';
}


}




/// @nodoc
mixin _$ReportsState {

 bool get isFetchingReports; bool get isFetchingFailed; bool get isFetchingSuccess; ReportFile? get report; bool get isRepoertSaving; bool get isReportSavingFailed; bool get isReportSavingSucces; ErrorModel get error; int get selectedMemberId; List<Report> get reports;
/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsStateCopyWith<ReportsState> get copyWith => _$ReportsStateCopyWithImpl<ReportsState>(this as ReportsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsState&&(identical(other.isFetchingReports, isFetchingReports) || other.isFetchingReports == isFetchingReports)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.report, report) || other.report == report)&&(identical(other.isRepoertSaving, isRepoertSaving) || other.isRepoertSaving == isRepoertSaving)&&(identical(other.isReportSavingFailed, isReportSavingFailed) || other.isReportSavingFailed == isReportSavingFailed)&&(identical(other.isReportSavingSucces, isReportSavingSucces) || other.isReportSavingSucces == isReportSavingSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId)&&const DeepCollectionEquality().equals(other.reports, reports));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingReports,isFetchingFailed,isFetchingSuccess,report,isRepoertSaving,isReportSavingFailed,isReportSavingSucces,error,selectedMemberId,const DeepCollectionEquality().hash(reports));

@override
String toString() {
  return 'ReportsState(isFetchingReports: $isFetchingReports, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, report: $report, isRepoertSaving: $isRepoertSaving, isReportSavingFailed: $isReportSavingFailed, isReportSavingSucces: $isReportSavingSucces, error: $error, selectedMemberId: $selectedMemberId, reports: $reports)';
}


}

/// @nodoc
abstract mixin class $ReportsStateCopyWith<$Res>  {
  factory $ReportsStateCopyWith(ReportsState value, $Res Function(ReportsState) _then) = _$ReportsStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingReports, bool isFetchingFailed, bool isFetchingSuccess, ReportFile? report, bool isRepoertSaving, bool isReportSavingFailed, bool isReportSavingSucces, ErrorModel error, int selectedMemberId, List<Report> reports
});


$ReportFileCopyWith<$Res>? get report;

}
/// @nodoc
class _$ReportsStateCopyWithImpl<$Res>
    implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._self, this._then);

  final ReportsState _self;
  final $Res Function(ReportsState) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingReports = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? report = freezed,Object? isRepoertSaving = null,Object? isReportSavingFailed = null,Object? isReportSavingSucces = null,Object? error = null,Object? selectedMemberId = null,Object? reports = null,}) {
  return _then(_self.copyWith(
isFetchingReports: null == isFetchingReports ? _self.isFetchingReports : isFetchingReports // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportFile?,isRepoertSaving: null == isRepoertSaving ? _self.isRepoertSaving : isRepoertSaving // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingFailed: null == isReportSavingFailed ? _self.isReportSavingFailed : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingSucces: null == isReportSavingSucces ? _self.isReportSavingSucces : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,reports: null == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}
/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportFileCopyWith<$Res>? get report {
    if (_self.report == null) {
    return null;
  }

  return $ReportFileCopyWith<$Res>(_self.report!, (value) {
    return _then(_self.copyWith(report: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ReportFile? report,  bool isRepoertSaving,  bool isReportSavingFailed,  bool isReportSavingSucces,  ErrorModel error,  int selectedMemberId,  List<Report> reports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.isReportSavingSucces,_that.error,_that.selectedMemberId,_that.reports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ReportFile? report,  bool isRepoertSaving,  bool isReportSavingFailed,  bool isReportSavingSucces,  ErrorModel error,  int selectedMemberId,  List<Report> reports)  $default,) {final _that = this;
switch (_that) {
case _ReportsState():
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.isReportSavingSucces,_that.error,_that.selectedMemberId,_that.reports);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingReports,  bool isFetchingFailed,  bool isFetchingSuccess,  ReportFile? report,  bool isRepoertSaving,  bool isReportSavingFailed,  bool isReportSavingSucces,  ErrorModel error,  int selectedMemberId,  List<Report> reports)?  $default,) {final _that = this;
switch (_that) {
case _ReportsState() when $default != null:
return $default(_that.isFetchingReports,_that.isFetchingFailed,_that.isFetchingSuccess,_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.isReportSavingSucces,_that.error,_that.selectedMemberId,_that.reports);case _:
  return null;

}
}

}

/// @nodoc


class _ReportsState implements ReportsState {
  const _ReportsState({required this.isFetchingReports, required this.isFetchingFailed, required this.isFetchingSuccess, required this.report, required this.isRepoertSaving, required this.isReportSavingFailed, required this.isReportSavingSucces, required this.error, required this.selectedMemberId, required final  List<Report> reports}): _reports = reports;
  

@override final  bool isFetchingReports;
@override final  bool isFetchingFailed;
@override final  bool isFetchingSuccess;
@override final  ReportFile? report;
@override final  bool isRepoertSaving;
@override final  bool isReportSavingFailed;
@override final  bool isReportSavingSucces;
@override final  ErrorModel error;
@override final  int selectedMemberId;
 final  List<Report> _reports;
@override List<Report> get reports {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportsState&&(identical(other.isFetchingReports, isFetchingReports) || other.isFetchingReports == isFetchingReports)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.report, report) || other.report == report)&&(identical(other.isRepoertSaving, isRepoertSaving) || other.isRepoertSaving == isRepoertSaving)&&(identical(other.isReportSavingFailed, isReportSavingFailed) || other.isReportSavingFailed == isReportSavingFailed)&&(identical(other.isReportSavingSucces, isReportSavingSucces) || other.isReportSavingSucces == isReportSavingSucces)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedMemberId, selectedMemberId) || other.selectedMemberId == selectedMemberId)&&const DeepCollectionEquality().equals(other._reports, _reports));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingReports,isFetchingFailed,isFetchingSuccess,report,isRepoertSaving,isReportSavingFailed,isReportSavingSucces,error,selectedMemberId,const DeepCollectionEquality().hash(_reports));

@override
String toString() {
  return 'ReportsState(isFetchingReports: $isFetchingReports, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, report: $report, isRepoertSaving: $isRepoertSaving, isReportSavingFailed: $isReportSavingFailed, isReportSavingSucces: $isReportSavingSucces, error: $error, selectedMemberId: $selectedMemberId, reports: $reports)';
}


}

/// @nodoc
abstract mixin class _$ReportsStateCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$ReportsStateCopyWith(_ReportsState value, $Res Function(_ReportsState) _then) = __$ReportsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingReports, bool isFetchingFailed, bool isFetchingSuccess, ReportFile? report, bool isRepoertSaving, bool isReportSavingFailed, bool isReportSavingSucces, ErrorModel error, int selectedMemberId, List<Report> reports
});


@override $ReportFileCopyWith<$Res>? get report;

}
/// @nodoc
class __$ReportsStateCopyWithImpl<$Res>
    implements _$ReportsStateCopyWith<$Res> {
  __$ReportsStateCopyWithImpl(this._self, this._then);

  final _ReportsState _self;
  final $Res Function(_ReportsState) _then;

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingReports = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? report = freezed,Object? isRepoertSaving = null,Object? isReportSavingFailed = null,Object? isReportSavingSucces = null,Object? error = null,Object? selectedMemberId = null,Object? reports = null,}) {
  return _then(_ReportsState(
isFetchingReports: null == isFetchingReports ? _self.isFetchingReports : isFetchingReports // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as ReportFile?,isRepoertSaving: null == isRepoertSaving ? _self.isRepoertSaving : isRepoertSaving // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingFailed: null == isReportSavingFailed ? _self.isReportSavingFailed : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingSucces: null == isReportSavingSucces ? _self.isReportSavingSucces : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,selectedMemberId: null == selectedMemberId ? _self.selectedMemberId : selectedMemberId // ignore: cast_nullable_to_non_nullable
as int,reports: null == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<Report>,
  ));
}

/// Create a copy of ReportsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportFileCopyWith<$Res>? get report {
    if (_self.report == null) {
    return null;
  }

  return $ReportFileCopyWith<$Res>(_self.report!, (value) {
    return _then(_self.copyWith(report: value));
  });
}
}

// dart format on
