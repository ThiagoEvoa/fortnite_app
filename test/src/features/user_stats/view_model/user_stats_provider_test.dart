import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';
import 'package:fortnite_app/src/features/user_stats/repository/user_stats_repository_impl.dart';
import 'package:fortnite_app/src/features/user_stats/view_model/user_stats_provider.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helper/test_helper.dart';

class MockUserStatsRepository extends Mock implements UserStatsRepositoryImpl {}

void main() {
  late MockUserStatsRepository mockUserStatsRepository;
  late UserStatsProvider userStatsProviderMock;
  late AsyncValue<UserStats> stateMock;

  setUp(() {
    mockUserStatsRepository = MockUserStatsRepository();
    userStatsProviderMock = UserStatsProvider(mockUserStatsRepository);
  });

  test('UserStatsProvider should return correct type', () {
    final provider = ProviderContainer().read(userStatsProvider);

    expect(
      provider,
      isA<AsyncData<UserStats>>(),
    );
  });

  test(
      'UserStatsProvider should retrieve FortniteMap object when success call retrieveUserStats',
      () async {
    when(() => mockUserStatsRepository.retrieveUserStats(userName: 'any_name'))
        .thenAnswer(
      (_) async => mockUserStatsModel,
    );

    await userStatsProviderMock.retrieveUserStats(userName: 'any_name');

    userStatsProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.value,
      isA<UserStats>(),
    );
  });

  test('UserStatsProvider should throw exception when call retrieveUserStats',
      () async {
    when(() => mockUserStatsRepository.retrieveUserStats(userName: 'any_name'))
        .thenThrow(Exception());

    await userStatsProviderMock.retrieveUserStats(userName: 'any_name');

    userStatsProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.error,
      const TypeMatcher<Exception>(),
    );
  });
}
