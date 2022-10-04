// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fortnite_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FortniteShop _$FortniteShopFromJson(Map<String, dynamic> json) => FortniteShop(
      featured: ShopSection.fromJson(json['featured'] as Map<String, dynamic>),
      daily: ShopSection.fromJson(json['daily'] as Map<String, dynamic>),
      specialFeatured:
          ShopSection.fromJson(json['specialFeatured'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FortniteShopToJson(FortniteShop instance) =>
    <String, dynamic>{
      'featured': instance.featured,
      'daily': instance.daily,
      'specialFeatured': instance.specialFeatured,
    };
