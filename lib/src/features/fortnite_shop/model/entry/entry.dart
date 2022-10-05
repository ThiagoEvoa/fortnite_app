import 'package:freezed_annotation/freezed_annotation.dart';

import '../model.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({
    required int regularPrice,
    required int finalPrice,
    required List<Item> items,
    String? bundleName,
    String? bundleInfo,
    String? bundleImage,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  factory Entry.initialState() => const Entry(
        regularPrice: 0,
        finalPrice: 0,
        items: [],
        bundleName: '',
        bundleInfo: '',
        bundleImage: '',
      );
}
