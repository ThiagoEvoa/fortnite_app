import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';

const mockUserStatsStringJson =
    '{"wins":112,"deaths":1392,"kills":4252,"kd":3.055}';
const mockUserStatsJson = {
  "wins": 112,
  "deaths": 1392,
  "kills": 4252,
  "kd": 3.055
};
const mockUserStatsModel = UserStats(
  wins: 112,
  deaths: 1392,
  kills: 4252,
  kd: 3.055,
);
