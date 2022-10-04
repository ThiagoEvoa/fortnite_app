import 'package:json_annotation/json_annotation.dart';

import 'entry.dart';

part 'shop_section.g.dart';

@JsonSerializable()
class ShopSection {
  ShopSection({required this.entries, this.name});

  final List<Entry> entries;
  final String? name;

  factory ShopSection.fromJson(Map<String, dynamic> json) =>
      _$ShopSectionFromJson(json);

  Map<String, dynamic> toJson() => _$ShopSectionToJson(this);

  factory ShopSection.initialState() => ShopSection(entries: [], name: '');
}
