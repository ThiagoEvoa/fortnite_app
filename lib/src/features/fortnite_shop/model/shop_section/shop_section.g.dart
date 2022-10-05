// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopFactory _$$_ShopFactoryFromJson(Map<String, dynamic> json) =>
    _$_ShopFactory(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ShopFactoryToJson(_$_ShopFactory instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'name': instance.name,
    };
