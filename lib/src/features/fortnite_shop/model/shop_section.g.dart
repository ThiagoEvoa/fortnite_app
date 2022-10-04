// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopSection _$ShopSectionFromJson(Map<String, dynamic> json) => ShopSection(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ShopSectionToJson(ShopSection instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'name': instance.name,
    };
