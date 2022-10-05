import 'package:freezed_annotation/freezed_annotation.dart';

import '../model.dart';

part 'fortnite_shop.freezed.dart';
part 'fortnite_shop.g.dart';

@freezed
class FortniteShop with _$FortniteShop {
  const factory FortniteShop({
    required ShopSection featured,
    required ShopSection daily,
    required ShopSection specialFeatured,
  }) = _FortniteShop;

  factory FortniteShop.fromJson(Map<String, dynamic> json) =>
      _$FortniteShopFromJson(json);

  factory FortniteShop.initialState() => FortniteShop(
        featured: ShopSection.initialState(),
        daily: ShopSection.initialState(),
        specialFeatured: ShopSection.initialState(),
      );
}
