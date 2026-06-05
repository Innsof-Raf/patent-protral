// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  @JsonKey(name: 'ad_banner')
  List<AdBannerModel> get ads => throw _privateConstructorUsedError;
  @JsonKey(name: 'speciality')
  List<SpecialityModel> get topSpecialities =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance')
  List<InsuranceModel> get topInsurances => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_banner')
  List<AdBannerModel> get topPackages => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_count')
  int get notificationCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ad_banner') List<AdBannerModel> ads,
      @JsonKey(name: 'speciality') List<SpecialityModel> topSpecialities,
      @JsonKey(name: 'insurance') List<InsuranceModel> topInsurances,
      @JsonKey(name: 'package_banner') List<AdBannerModel> topPackages,
      @JsonKey(name: 'notification_count') int notificationCount});
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  final HomeDataModel _value;
  // ignore: unused_field
  final $Res Function(HomeDataModel) _then;

  @override
  $Res call({
    Object? ads = freezed,
    Object? topSpecialities = freezed,
    Object? topInsurances = freezed,
    Object? topPackages = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_value.copyWith(
      ads: ads == freezed
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdBannerModel>,
      topSpecialities: topSpecialities == freezed
          ? _value.topSpecialities
          : topSpecialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
      topInsurances: topInsurances == freezed
          ? _value.topInsurances
          : topInsurances // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>,
      topPackages: topPackages == freezed
          ? _value.topPackages
          : topPackages // ignore: cast_nullable_to_non_nullable
              as List<AdBannerModel>,
      notificationCount: notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeDataModelCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$_HomeDataModelCopyWith(
          _$_HomeDataModel value, $Res Function(_$_HomeDataModel) then) =
      __$$_HomeDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ad_banner') List<AdBannerModel> ads,
      @JsonKey(name: 'speciality') List<SpecialityModel> topSpecialities,
      @JsonKey(name: 'insurance') List<InsuranceModel> topInsurances,
      @JsonKey(name: 'package_banner') List<AdBannerModel> topPackages,
      @JsonKey(name: 'notification_count') int notificationCount});
}

/// @nodoc
class __$$_HomeDataModelCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res>
    implements _$$_HomeDataModelCopyWith<$Res> {
  __$$_HomeDataModelCopyWithImpl(
      _$_HomeDataModel _value, $Res Function(_$_HomeDataModel) _then)
      : super(_value, (v) => _then(v as _$_HomeDataModel));

  @override
  _$_HomeDataModel get _value => super._value as _$_HomeDataModel;

  @override
  $Res call({
    Object? ads = freezed,
    Object? topSpecialities = freezed,
    Object? topInsurances = freezed,
    Object? topPackages = freezed,
    Object? notificationCount = freezed,
  }) {
    return _then(_$_HomeDataModel(
      ads: ads == freezed
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdBannerModel>,
      topSpecialities: topSpecialities == freezed
          ? _value._topSpecialities
          : topSpecialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
      topInsurances: topInsurances == freezed
          ? _value._topInsurances
          : topInsurances // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>,
      topPackages: topPackages == freezed
          ? _value._topPackages
          : topPackages // ignore: cast_nullable_to_non_nullable
              as List<AdBannerModel>,
      notificationCount: notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDataModel implements _HomeDataModel {
  const _$_HomeDataModel(
      {@JsonKey(name: 'ad_banner')
          required final List<AdBannerModel> ads,
      @JsonKey(name: 'speciality')
          required final List<SpecialityModel> topSpecialities,
      @JsonKey(name: 'insurance')
          required final List<InsuranceModel> topInsurances,
      @JsonKey(name: 'package_banner')
          required final List<AdBannerModel> topPackages,
      @JsonKey(name: 'notification_count')
          required this.notificationCount})
      : _ads = ads,
        _topSpecialities = topSpecialities,
        _topInsurances = topInsurances,
        _topPackages = topPackages;

  factory _$_HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataModelFromJson(json);

  final List<AdBannerModel> _ads;
  @override
  @JsonKey(name: 'ad_banner')
  List<AdBannerModel> get ads {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  final List<SpecialityModel> _topSpecialities;
  @override
  @JsonKey(name: 'speciality')
  List<SpecialityModel> get topSpecialities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSpecialities);
  }

  final List<InsuranceModel> _topInsurances;
  @override
  @JsonKey(name: 'insurance')
  List<InsuranceModel> get topInsurances {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topInsurances);
  }

  final List<AdBannerModel> _topPackages;
  @override
  @JsonKey(name: 'package_banner')
  List<AdBannerModel> get topPackages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPackages);
  }

  @override
  @JsonKey(name: 'notification_count')
  final int notificationCount;

  @override
  String toString() {
    return 'HomeDataModel(ads: $ads, topSpecialities: $topSpecialities, topInsurances: $topInsurances, topPackages: $topPackages, notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataModel &&
            const DeepCollectionEquality().equals(other._ads, _ads) &&
            const DeepCollectionEquality()
                .equals(other._topSpecialities, _topSpecialities) &&
            const DeepCollectionEquality()
                .equals(other._topInsurances, _topInsurances) &&
            const DeepCollectionEquality()
                .equals(other._topPackages, _topPackages) &&
            const DeepCollectionEquality()
                .equals(other.notificationCount, notificationCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ads),
      const DeepCollectionEquality().hash(_topSpecialities),
      const DeepCollectionEquality().hash(_topInsurances),
      const DeepCollectionEquality().hash(_topPackages),
      const DeepCollectionEquality().hash(notificationCount));

  @JsonKey(ignore: true)
  @override
  _$$_HomeDataModelCopyWith<_$_HomeDataModel> get copyWith =>
      __$$_HomeDataModelCopyWithImpl<_$_HomeDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataModelToJson(
      this,
    );
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel(
      {@JsonKey(name: 'ad_banner')
          required final List<AdBannerModel> ads,
      @JsonKey(name: 'speciality')
          required final List<SpecialityModel> topSpecialities,
      @JsonKey(name: 'insurance')
          required final List<InsuranceModel> topInsurances,
      @JsonKey(name: 'package_banner')
          required final List<AdBannerModel> topPackages,
      @JsonKey(name: 'notification_count')
          required final int notificationCount}) = _$_HomeDataModel;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$_HomeDataModel.fromJson;

  @override
  @JsonKey(name: 'ad_banner')
  List<AdBannerModel> get ads;
  @override
  @JsonKey(name: 'speciality')
  List<SpecialityModel> get topSpecialities;
  @override
  @JsonKey(name: 'insurance')
  List<InsuranceModel> get topInsurances;
  @override
  @JsonKey(name: 'package_banner')
  List<AdBannerModel> get topPackages;
  @override
  @JsonKey(name: 'notification_count')
  int get notificationCount;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataModelCopyWith<_$_HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
