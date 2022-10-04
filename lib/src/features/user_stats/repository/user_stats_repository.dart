import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';

abstract class UserStatsRepository {
  Future<UserStats> retrieveUserStats({required String userName});
}
