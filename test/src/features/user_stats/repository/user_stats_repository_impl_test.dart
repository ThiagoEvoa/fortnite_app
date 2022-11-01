import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/user_stats/model/user_stats.dart';
import 'package:fortnite_app/src/features/user_stats/repository/user_stats_repository_impl.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_util/test_util.dart';

class MockUserStatsRepository extends Mock implements UserStatsRepositoryImpl {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockUserStatsRepository mockUserStatsRepository;
  late UserStatsRepositoryImpl userStatsRepositoryImpl;
  late DioAdapter dioAdapter;
  late Provider<Dio> dioProvider;

  setUp(() {
    mockUserStatsRepository = MockUserStatsRepository();
    Dio dio = Dio(BaseOptions(baseUrl: 'https://example.com/'));
    dioAdapter = DioAdapter(
      dio: dio,
      matcher: const FullHttpRequestMatcher(),
    );
    dio.httpClientAdapter = dioAdapter;
    dioProvider = Provider(((ref) {
      return dio;
    }));

    userStatsRepositoryImpl = UserStatsRepositoryImpl(
      ProviderContainer(
        overrides: [
          userStatsRepository.overrideWithValue(mockUserStatsRepository),
        ],
      ).read(dioProvider),
    );
  });

  test('Test if correct type is returned', () {
    final provider = ProviderContainer().read(userStatsRepository);

    expect(provider, isA<UserStatsRepositoryImpl>());
  });

  test('Retrieve FortniteMap object when success call retrieveFortniteMap',
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

  test('Throws exception when call retrieveFortniteMap', () async {
    dioAdapter.onGet(
      'map',
      (server) => server.reply(
        500,
        DioError(
          response: Response(
            data: 'Something went wrong',
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
