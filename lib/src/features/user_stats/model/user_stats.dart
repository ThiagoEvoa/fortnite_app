import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats.freezed.dart';
part 'user_stats.g.dart';

@freezed
class UserStats with _$UserStats {
  const factory UserStats({
    required int wins,
    required int deaths,
    required int kills,
    required double kd,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);

  factory UserStats.initialState() => const UserStats(
        wins: 0,
        deaths: 0,
        kills: 0,
        kd: 0,
      );
}
