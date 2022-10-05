import 'package:freezed_annotation/freezed_annotation.dart';

import '../model.dart';

part 'shop_section.freezed.dart';
part 'shop_section.g.dart';

@freezed
class ShopSection with _$ShopSection {
  const factory ShopSection({required List<Entry> entries, String? name}) =
      _ShopFactory;

  factory ShopSection.fromJson(Map<String, dynamic> json) =>
      _$ShopSectionFromJson(json);

  factory ShopSection.initialState() =>
      const ShopSection(entries: [], name: '');
}
