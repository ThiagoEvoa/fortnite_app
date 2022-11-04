import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../../test_helper/test_helper.dart';

class MockUserStatsRepository extends Mock implements UserStatsRepositoryImpl {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockUserStatsRepository mockUserStatsRepository;
  late UserStatsRepositoryImpl userStatsRepositoryImpl;
  late DioAdapter dioAdapter;
  late Provider<Dio> dioProvider;

  setUp(() {
    mockUserStatsRepository = MockUserStatsRepository();
    dioProvider = DioMock.createMock();
    dioAdapter = DioMock.dioAdapter;

    userStatsRepositoryImpl = UserStatsRepositoryImpl(
      ProviderContainer(
        overrides: [
          userStatsRepository.overrideWithValue(mockUserStatsRepository),
        ],
      ).read(dioProvider),
    );
  });

  test('UserStatsRepositoryImpl should return correct type', () {
    final provider = ProviderContainer().read(userStatsRepository);

    expect(provider, isA<UserStatsRepositoryImpl>());
  });

  test(
      'UserStatsRepositoryImpl should retrieve FortniteMap object when success call retrieveUserStats',
      () async {
    dioAdapter.onGet(
      'stats/any_name',
      (server) => server.reply(
        200,
        const UserStats(
          wins: 112,
          deaths: 1392,
          kills: 4252,
          kd: 3.055,
        ),
        delay: const Duration(seconds: 1),
      ),
      data: Matchers.any,
    );

    final result =
        await userStatsRepositoryImpl.retrieveUserStats(userName: 'any_name');

    expect(
      result,
      mockUserStatsModel,
    );
  });

  test(
      'UserStatsRepositoryImpl should throw exception when call retrieveUserStats',
      () async {
    dioAdapter.onGet(
      'map',
      (server) => server.reply(
        500,
        DioError(
          response: Response(
            data: 'any_data',
            statusCode: 500,
            requestOptions: RequestOptions(path: 'any_path'),
          ),
          requestOptions: RequestOptions(path: 'any_path'),
        ),
        delay: const Duration(seconds: 1),
      ),
      data: Matchers.any,
    );

    final result =
        userStatsRepositoryImpl.retrieveUserStats(userName: 'any_name');

    expect(
      result,
      throwsA(const TypeMatcher<Exception>()),
    );
  });
}
