// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserStats _$$_UserStatsFromJson(Map<String, dynamic> json) => _$_UserStats(
      wins: json['wins'] as int,
      deaths: json['deaths'] as int,
      kills: json['kills'] as int,
      kd: (json['kd'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserStatsToJson(_$_UserStats instance) =>
    <String, dynamic>{
      'wins': instance.wins,
      'deaths': instance.deaths,
      'kills': instance.kills,
      'kd': instance.kd,
    };
