import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'entry.g.dart';

@JsonSerializable()
class Entry {
  Entry({
    required this.regularPrice,
    required this.finalPrice,
    required this.items,
    this.bundleName,
    this.bundleInfo,
    this.bundleImage,
  });

  final int regularPrice;
  final int finalPrice;
  final List<Item> items;
  final String? bundleName;
  final String? bundleInfo;
  final String? bundleImage;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);

  factory Entry.initialState() => Entry(
        regularPrice: 0,
        finalPrice: 0,
        items: [],
        bundleName: '',
        bundleInfo: '',
        bundleImage: '',
      );
}
