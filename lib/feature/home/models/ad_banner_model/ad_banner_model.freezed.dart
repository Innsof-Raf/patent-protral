// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad_banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdBannerModel _$AdBannerModelFromJson(Map<String, dynamic> json) {
  return _AdBannerModel.fromJson(json);
}

/// @nodoc
mixin _$AdBannerModel {
  @JsonKey(name: 'Image_nm')
  String? get imageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_primary')
  int get idPrimary => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_type')
  String get bannerType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdBannerModelCopyWith<AdBannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdBannerModelCopyWith<$Res> {
  factory $AdBannerModelCopyWith(
          AdBannerModel value, $Res Function(AdBannerModel) then) =
      _$AdBannerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Image_nm') String? imageName,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'id_primary') int idPrimary,
      @JsonKey(name: 'banner_type') String bannerType});
}

/// @nodoc
class _$AdBannerModelCopyWithImpl<$Res>
    implements $AdBannerModelCopyWith<$Res> {
  _$AdBannerModelCopyWithImpl(this._value, this._then);

  final AdBannerModel _value;
  // ignore: unused_field
  final $Res Function(AdBannerModel) _then;

  @override
  $Res call({
    Object? imageName = freezed,
    Object? url = freezed,
    Object? idPrimary = freezed,
    Object? bannerType = freezed,
  }) {
    return _then(_value.copyWith(
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      idPrimary: idPrimary == freezed
          ? _value.idPrimary
          : idPrimary // ignore: cast_nullable_to_non_nullable
              as int,
      bannerType: bannerType == freezed
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AdBannerModelCopyWith<$Res>
    implements $AdBannerModelCopyWith<$Res> {
  factory _$$_AdBannerModelCopyWith(
          _$_AdBannerModel value, $Res Function(_$_AdBannerModel) then) =
      __$$_AdBannerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Image_nm') String? imageName,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'id_primary') int idPrimary,
      @JsonKey(name: 'banner_type') String bannerType});
}

/// @nodoc
class __$$_AdBannerModelCopyWithImpl<$Res>
    extends _$AdBannerModelCopyWithImpl<$Res>
    implements _$$_AdBannerModelCopyWith<$Res> {
  __$$_AdBannerModelCopyWithImpl(
      _$_AdBannerModel _value, $Res Function(_$_AdBannerModel) _then)
      : super(_value, (v) => _then(v as _$_AdBannerModel));

  @override
  _$_AdBannerModel get _value => super._value as _$_AdBannerModel;

  @override
  $Res call({
    Object? imageName = freezed,
    Object? url = freezed,
    Object? idPrimary = freezed,
    Object? bannerType = freezed,
  }) {
    return _then(_$_AdBannerModel(
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      idPrimary: idPrimary == freezed
          ? _value.idPrimary
          : idPrimary // ignore: cast_nullable_to_non_nullable
              as int,
      bannerType: bannerType == freezed
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdBannerModel implements _AdBannerModel {
  const _$_AdBannerModel(
      {@JsonKey(name: 'Image_nm') required this.imageName,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'id_primary') required this.idPrimary,
      @JsonKey(name: 'banner_type') required this.bannerType});

  factory _$_AdBannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdBannerModelFromJson(json);

  @override
  @JsonKey(name: 'Image_nm')
  final String? imageName;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'id_primary')
  final int idPrimary;
  @override
  @JsonKey(name: 'banner_type')
  final String bannerType;

  @override
  String toString() {
    return 'AdBannerModel(imageName: $imageName, url: $url, idPrimary: $idPrimary, bannerType: $bannerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdBannerModel &&
            const DeepCollectionEquality().equals(other.imageName, imageName) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.idPrimary, idPrimary) &&
            const DeepCollectionEquality()
                .equals(other.bannerType, bannerType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageName),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(idPrimary),
      const DeepCollectionEquality().hash(bannerType));

  @JsonKey(ignore: true)
  @override
  _$$_AdBannerModelCopyWith<_$_AdBannerModel> get copyWith =>
      __$$_AdBannerModelCopyWithImpl<_$_AdBannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdBannerModelToJson(
      this,
    );
  }
}

abstract class _AdBannerModel implements AdBannerModel {
  const factory _AdBannerModel(
          {@JsonKey(name: 'Image_nm') required final String? imageName,
          @JsonKey(name: 'url') required final String? url,
          @JsonKey(name: 'id_primary') required final int idPrimary,
          @JsonKey(name: 'banner_type') required final String bannerType}) =
      _$_AdBannerModel;

  factory _AdBannerModel.fromJson(Map<String, dynamic> json) =
      _$_AdBannerModel.fromJson;

  @override
  @JsonKey(name: 'Image_nm')
  String? get imageName;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'id_primary')
  int get idPrimary;
  @override
  @JsonKey(name: 'banner_type')
  String get bannerType;
  @override
  @JsonKey(ignore: true)
  _$$_AdBannerModelCopyWith<_$_AdBannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
