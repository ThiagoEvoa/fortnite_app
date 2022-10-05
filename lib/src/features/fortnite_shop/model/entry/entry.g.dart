// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Entry _$$_EntryFromJson(Map<String, dynamic> json) => _$_Entry(
      regularPrice: json['regularPrice'] as int,
      finalPrice: json['finalPrice'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      bundleName: json['bundleName'] as String?,
      bundleInfo: json['bundleInfo'] as String?,
      bundleImage: json['bundleImage'] as String?,
    );

Map<String, dynamic> _$$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'regularPrice': instance.regularPrice,
      'finalPrice': instance.finalPrice,
      'items': instance.items,
      'bundleName': instance.bundleName,
      'bundleInfo': instance.bundleInfo,
      'bundleImage': instance.bundleImage,
    };
