import 'package:freezed_annotation/freezed_annotation.dart';

import '../model.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String name,
    required String description,
    required String type,
    required String rarity,
    required Images images,
    required String added,
    String? introduction,
    String? set,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  factory Item.initialState() => Item(
        name: '',
        description: '',
        type: '',
        rarity: '',
        images: Images.initialState(),
        added: '',
        introduction: '',
        set: '',
      );
}
