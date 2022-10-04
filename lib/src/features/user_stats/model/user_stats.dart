import 'package:json_annotation/json_annotation.dart';

part 'user_stats.g.dart';

@JsonSerializable()
class UserStats {
  UserStats({
    required this.wins,
    required this.deaths,
    required this.kills,
    required this.kd,
  });

  final int wins;
  final int deaths;
  final int kills;
  final double kd;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);

  Map<String, dynamic> toJson() => _$UserStatsToJson(this);

  factory UserStats.initialState() => UserStats(
        wins: 0,
        deaths: 0,
        kills: 0,
        kd: 0,
      );
}
