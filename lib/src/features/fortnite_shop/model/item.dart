import 'package:json_annotation/json_annotation.dart';

import 'images.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  Item({
    required this.name,
    required this.description,
    required this.type,
    required this.rarity,
    required this.images,
    required this.added,
    this.introduction,
    this.set,
  });

  final String name;
  final String description;
  final String type;
  final String rarity;
  final Images images;
  final String added;
  final String? introduction;
  final String? set;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  factory Item.initialState() => Item(
        name: '',
        description: '',
        type: '',
        rarity: '',
        introduction: '',
        images: Images.initialState(),
        added: '',
        set: '',
      );
}
