import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';

import '../repository/user_stats_repository.dart';
import '../repository/user_stats_repository_impl.dart';

final userStatsProvider =
    StateNotifierProvider<UserStatsProvider, AsyncValue<UserStats>>(
  (ref) => UserStatsProvider(ref.watch(userStatsRepository)),
);

class UserStatsProvider extends StateNotifier<AsyncValue<UserStats>> {
  final UserStatsRepository _userStatsRepository;

  UserStatsProvider(this._userStatsRepository)
      : super(AsyncValue.data(UserStats.initialState()));

  Future<void> retrieveUserStats({required String userName}) async {
    try {
      state = const AsyncLoading();
      final userStats = await _userStatsRepository.retrieveUserStats(
        userName: userName,
      );
      state = AsyncValue.data(userStats);
    } catch (exception, stackTrace) {
      state = AsyncValue.error(exception, stackTrace);
    }
  }
}
