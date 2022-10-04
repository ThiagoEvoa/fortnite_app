import 'package:json_annotation/json_annotation.dart';

import 'shop_section.dart';

part 'fortnite_shop.g.dart';

@JsonSerializable()
class FortniteShop {
  FortniteShop({
    required this.featured,
    required this.daily,
    required this.specialFeatured,
  });

  final ShopSection featured;
  final ShopSection daily;
  final ShopSection specialFeatured;

  factory FortniteShop.fromJson(Map<String, dynamic> json) =>
      _$FortniteShopFromJson(json);

  Map<String, dynamic> toJson() => _$FortniteShopToJson(this);

  factory FortniteShop.initialState() => FortniteShop(
        featured: ShopSection.initialState(),
        daily: ShopSection.initialState(),
        specialFeatured: ShopSection.initialState(),
      );
}
