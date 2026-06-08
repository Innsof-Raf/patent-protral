// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportEvent()';
}


}

/// @nodoc
class $ReportEventCopyWith<$Res>  {
$ReportEventCopyWith(ReportEvent _, $Res Function(ReportEvent) __);
}


/// Adds pattern-matching-related methods to [ReportEvent].
extension ReportEventPatterns on ReportEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StroeRport value)?  stroeRport,TResult Function( ClearReport value)?  clearReport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StroeRport() when stroeRport != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StroeRport value)  stroeRport,required TResult Function( ClearReport value)  clearReport,}){
final _that = this;
switch (_that) {
case StroeRport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StroeRport value)?  stroeRport,TResult? Function( ClearReport value)?  clearReport,}){
final _that = this;
switch (_that) {
case StroeRport() when stroeRport != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String url)?  stroeRport,TResult Function()?  clearReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StroeRport() when stroeRport != null:
return stroeRport(_that.url);case ClearReport() when clearReport != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String url)  stroeRport,required TResult Function()  clearReport,}) {final _that = this;
switch (_that) {
case StroeRport():
return stroeRport(_that.url);case ClearReport():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String url)?  stroeRport,TResult? Function()?  clearReport,}) {final _that = this;
switch (_that) {
case StroeRport() when stroeRport != null:
return stroeRport(_that.url);case ClearReport() when clearReport != null:
return clearReport();case _:
  return null;

}
}

}

/// @nodoc


class StroeRport with DiagnosticableTreeMixin implements ReportEvent {
  const StroeRport({required this.url});
  

 final  String url;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StroeRportCopyWith<StroeRport> get copyWith => _$StroeRportCopyWithImpl<StroeRport>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportEvent.stroeRport'))
    ..add(DiagnosticsProperty('url', url));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StroeRport&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportEvent.stroeRport(url: $url)';
}


}

/// @nodoc
abstract mixin class $StroeRportCopyWith<$Res> implements $ReportEventCopyWith<$Res> {
  factory $StroeRportCopyWith(StroeRport value, $Res Function(StroeRport) _then) = _$StroeRportCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$StroeRportCopyWithImpl<$Res>
    implements $StroeRportCopyWith<$Res> {
  _$StroeRportCopyWithImpl(this._self, this._then);

  final StroeRport _self;
  final $Res Function(StroeRport) _then;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(StroeRport(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearReport with DiagnosticableTreeMixin implements ReportEvent {
  const ClearReport();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportEvent.clearReport'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearReport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportEvent.clearReport()';
}


}




/// @nodoc
mixin _$ReportState implements DiagnosticableTreeMixin {

 Uint8List? get report; bool get isRepoertSaving; bool get isReportSavingFailed; ErrorModel get error; bool get isReportSavingSucces;
/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportStateCopyWith<ReportState> get copyWith => _$ReportStateCopyWithImpl<ReportState>(this as ReportState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportState'))
    ..add(DiagnosticsProperty('report', report))..add(DiagnosticsProperty('isRepoertSaving', isRepoertSaving))..add(DiagnosticsProperty('isReportSavingFailed', isReportSavingFailed))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('isReportSavingSucces', isReportSavingSucces));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportState&&const DeepCollectionEquality().equals(other.report, report)&&(identical(other.isRepoertSaving, isRepoertSaving) || other.isRepoertSaving == isRepoertSaving)&&(identical(other.isReportSavingFailed, isReportSavingFailed) || other.isReportSavingFailed == isReportSavingFailed)&&(identical(other.error, error) || other.error == error)&&(identical(other.isReportSavingSucces, isReportSavingSucces) || other.isReportSavingSucces == isReportSavingSucces));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(report),isRepoertSaving,isReportSavingFailed,error,isReportSavingSucces);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportState(report: $report, isRepoertSaving: $isRepoertSaving, isReportSavingFailed: $isReportSavingFailed, error: $error, isReportSavingSucces: $isReportSavingSucces)';
}


}

/// @nodoc
abstract mixin class $ReportStateCopyWith<$Res>  {
  factory $ReportStateCopyWith(ReportState value, $Res Function(ReportState) _then) = _$ReportStateCopyWithImpl;
@useResult
$Res call({
 Uint8List? report, bool isRepoertSaving, bool isReportSavingFailed, ErrorModel error, bool isReportSavingSucces
});




}
/// @nodoc
class _$ReportStateCopyWithImpl<$Res>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._self, this._then);

  final ReportState _self;
  final $Res Function(ReportState) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? report = freezed,Object? isRepoertSaving = null,Object? isReportSavingFailed = null,Object? error = null,Object? isReportSavingSucces = null,}) {
  return _then(_self.copyWith(
report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Uint8List?,isRepoertSaving: null == isRepoertSaving ? _self.isRepoertSaving : isRepoertSaving // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingFailed: null == isReportSavingFailed ? _self.isReportSavingFailed : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,isReportSavingSucces: null == isReportSavingSucces ? _self.isReportSavingSucces : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportState].
extension ReportStatePatterns on ReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportState value)  $default,){
final _that = this;
switch (_that) {
case _ReportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportState value)?  $default,){
final _that = this;
switch (_that) {
case _ReportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uint8List? report,  bool isRepoertSaving,  bool isReportSavingFailed,  ErrorModel error,  bool isReportSavingSucces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportState() when $default != null:
return $default(_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.error,_that.isReportSavingSucces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uint8List? report,  bool isRepoertSaving,  bool isReportSavingFailed,  ErrorModel error,  bool isReportSavingSucces)  $default,) {final _that = this;
switch (_that) {
case _ReportState():
return $default(_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.error,_that.isReportSavingSucces);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uint8List? report,  bool isRepoertSaving,  bool isReportSavingFailed,  ErrorModel error,  bool isReportSavingSucces)?  $default,) {final _that = this;
switch (_that) {
case _ReportState() when $default != null:
return $default(_that.report,_that.isRepoertSaving,_that.isReportSavingFailed,_that.error,_that.isReportSavingSucces);case _:
  return null;

}
}

}

/// @nodoc


class _ReportState with DiagnosticableTreeMixin implements ReportState {
  const _ReportState({required this.report, required this.isRepoertSaving, required this.isReportSavingFailed, required this.error, required this.isReportSavingSucces});
  

@override final  Uint8List? report;
@override final  bool isRepoertSaving;
@override final  bool isReportSavingFailed;
@override final  ErrorModel error;
@override final  bool isReportSavingSucces;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportStateCopyWith<_ReportState> get copyWith => __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportState'))
    ..add(DiagnosticsProperty('report', report))..add(DiagnosticsProperty('isRepoertSaving', isRepoertSaving))..add(DiagnosticsProperty('isReportSavingFailed', isReportSavingFailed))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('isReportSavingSucces', isReportSavingSucces));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportState&&const DeepCollectionEquality().equals(other.report, report)&&(identical(other.isRepoertSaving, isRepoertSaving) || other.isRepoertSaving == isRepoertSaving)&&(identical(other.isReportSavingFailed, isReportSavingFailed) || other.isReportSavingFailed == isReportSavingFailed)&&(identical(other.error, error) || other.error == error)&&(identical(other.isReportSavingSucces, isReportSavingSucces) || other.isReportSavingSucces == isReportSavingSucces));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(report),isRepoertSaving,isReportSavingFailed,error,isReportSavingSucces);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportState(report: $report, isRepoertSaving: $isRepoertSaving, isReportSavingFailed: $isReportSavingFailed, error: $error, isReportSavingSucces: $isReportSavingSucces)';
}


}

/// @nodoc
abstract mixin class _$ReportStateCopyWith<$Res> implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(_ReportState value, $Res Function(_ReportState) _then) = __$ReportStateCopyWithImpl;
@override @useResult
$Res call({
 Uint8List? report, bool isRepoertSaving, bool isReportSavingFailed, ErrorModel error, bool isReportSavingSucces
});




}
/// @nodoc
class __$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(this._self, this._then);

  final _ReportState _self;
  final $Res Function(_ReportState) _then;

/// Create a copy of ReportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? report = freezed,Object? isRepoertSaving = null,Object? isReportSavingFailed = null,Object? error = null,Object? isReportSavingSucces = null,}) {
  return _then(_ReportState(
report: freezed == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as Uint8List?,isRepoertSaving: null == isRepoertSaving ? _self.isRepoertSaving : isRepoertSaving // ignore: cast_nullable_to_non_nullable
as bool,isReportSavingFailed: null == isReportSavingFailed ? _self.isReportSavingFailed : isReportSavingFailed // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,isReportSavingSucces: null == isReportSavingSucces ? _self.isReportSavingSucces : isReportSavingSucces // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
