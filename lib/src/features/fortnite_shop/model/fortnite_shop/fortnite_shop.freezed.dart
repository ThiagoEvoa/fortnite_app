// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fortnite_shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FortniteShop _$FortniteShopFromJson(Map<String, dynamic> json) {
  return _FortniteShop.fromJson(json);
}

/// @nodoc
mixin _$FortniteShop {
  ShopSection get featured => throw _privateConstructorUsedError;
  ShopSection get daily => throw _privateConstructorUsedError;
  ShopSection get specialFeatured => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FortniteShopCopyWith<FortniteShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortniteShopCopyWith<$Res> {
  factory $FortniteShopCopyWith(
          FortniteShop value, $Res Function(FortniteShop) then) =
      _$FortniteShopCopyWithImpl<$Res>;
  $Res call(
      {ShopSection featured, ShopSection daily, ShopSection specialFeatured});

  $ShopSectionCopyWith<$Res> get featured;
  $ShopSectionCopyWith<$Res> get daily;
  $ShopSectionCopyWith<$Res> get specialFeatured;
}

/// @nodoc
class _$FortniteShopCopyWithImpl<$Res> implements $FortniteShopCopyWith<$Res> {
  _$FortniteShopCopyWithImpl(this._value, this._then);

  final FortniteShop _value;
  // ignore: unused_field
  final $Res Function(FortniteShop) _then;

  @override
  $Res call({
    Object? featured = freezed,
    Object? daily = freezed,
    Object? specialFeatured = freezed,
  }) {
    return _then(_value.copyWith(
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as ShopSection,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as ShopSection,
      specialFeatured: specialFeatured == freezed
          ? _value.specialFeatured
          : specialFeatured // ignore: cast_nullable_to_non_nullable
              as ShopSection,
    ));
  }

  @override
  $ShopSectionCopyWith<$Res> get featured {
    return $ShopSectionCopyWith<$Res>(_value.featured, (value) {
      return _then(_value.copyWith(featured: value));
    });
  }

  @override
  $ShopSectionCopyWith<$Res> get daily {
    return $ShopSectionCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value));
    });
  }

  @override
  $ShopSectionCopyWith<$Res> get specialFeatured {
    return $ShopSectionCopyWith<$Res>(_value.specialFeatured, (value) {
      return _then(_value.copyWith(specialFeatured: value));
    });
  }
}

/// @nodoc
abstract class _$$_FortniteShopCopyWith<$Res>
    implements $FortniteShopCopyWith<$Res> {
  factory _$$_FortniteShopCopyWith(
          _$_FortniteShop value, $Res Function(_$_FortniteShop) then) =
      __$$_FortniteShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShopSection featured, ShopSection daily, ShopSection specialFeatured});

  @override
  $ShopSectionCopyWith<$Res> get featured;
  @override
  $ShopSectionCopyWith<$Res> get daily;
  @override
  $ShopSectionCopyWith<$Res> get specialFeatured;
}

/// @nodoc
class __$$_FortniteShopCopyWithImpl<$Res>
    extends _$FortniteShopCopyWithImpl<$Res>
    implements _$$_FortniteShopCopyWith<$Res> {
  __$$_FortniteShopCopyWithImpl(
      _$_FortniteShop _value, $Res Function(_$_FortniteShop) _then)
      : super(_value, (v) => _then(v as _$_FortniteShop));

  @override
  _$_FortniteShop get _value => super._value as _$_FortniteShop;

  @override
  $Res call({
    Object? featured = freezed,
    Object? daily = freezed,
    Object? specialFeatured = freezed,
  }) {
    return _then(_$_FortniteShop(
      featured: featured == freezed
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as ShopSection,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as ShopSection,
      specialFeatured: specialFeatured == freezed
          ? _value.specialFeatured
          : specialFeatured // ignore: cast_nullable_to_non_nullable
              as ShopSection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FortniteShop implements _FortniteShop {
  const _$_FortniteShop(
      {required this.featured,
      required this.daily,
      required this.specialFeatured});

  factory _$_FortniteShop.fromJson(Map<String, dynamic> json) =>
      _$$_FortniteShopFromJson(json);

  @override
  final ShopSection featured;
  @override
  final ShopSection daily;
  @override
  final ShopSection specialFeatured;

  @override
  String toString() {
    return 'FortniteShop(featured: $featured, daily: $daily, specialFeatured: $specialFeatured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortniteShop &&
            const DeepCollectionEquality().equals(other.featured, featured) &&
            const DeepCollectionEquality().equals(other.daily, daily) &&
            const DeepCollectionEquality()
                .equals(other.specialFeatured, specialFeatured));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(featured),
      const DeepCollectionEquality().hash(daily),
      const DeepCollectionEquality().hash(specialFeatured));

  @JsonKey(ignore: true)
  @override
  _$$_FortniteShopCopyWith<_$_FortniteShop> get copyWith =>
      __$$_FortniteShopCopyWithImpl<_$_FortniteShop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FortniteShopToJson(
      this,
    );
  }
}

abstract class _FortniteShop implements FortniteShop {
  const factory _FortniteShop(
      {required final ShopSection featured,
      required final ShopSection daily,
      required final ShopSection specialFeatured}) = _$_FortniteShop;

  factory _FortniteShop.fromJson(Map<String, dynamic> json) =
      _$_FortniteShop.fromJson;

  @override
  ShopSection get featured;
  @override
  ShopSection get daily;
  @override
  ShopSection get specialFeatured;
  @override
  @JsonKey(ignore: true)
  _$$_FortniteShopCopyWith<_$_FortniteShop> get copyWith =>
      throw _privateConstructorUsedError;
}
