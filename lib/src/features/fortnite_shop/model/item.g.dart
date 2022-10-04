// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      rarity: json['rarity'] as String,
      images: Images.fromJson(json['images'] as Map<String, dynamic>),
      added: json['added'] as String,
      introduction: json['introduction'] as String?,
      set: json['set'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'rarity': instance.rarity,
      'images': instance.images,
      'added': instance.added,
      'introduction': instance.introduction,
      'set': instance.set,
    };
