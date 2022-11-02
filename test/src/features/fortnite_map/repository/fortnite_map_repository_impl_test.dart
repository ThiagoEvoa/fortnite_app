import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helper/test_helper.dart';

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockFortniteMapRepository mockFortniteMapRepository;
  late FortniteMapRepositoryImpl fortniteMapRepositoryImpl;
  late DioAdapter dioAdapter;
  late Provider<Dio> dioProvider;

  setUp(() {
    mockFortniteMapRepository = MockFortniteMapRepository();
    dioProvider = DioMock.createMock();
    dioAdapter = DioMock.dioAdapter;

    fortniteMapRepositoryImpl = FortniteMapRepositoryImpl(
      ProviderContainer(
        overrides: [
          fortniteMapRepository.overrideWithValue(mockFortniteMapRepository),
        ],
      ).read(dioProvider),
    );
  });

  test('FortniteMapRepositoryImpl should return correct type', () {
    final provider = ProviderContainer().read(fortniteMapRepository);

    expect(provider, isA<FortniteMapRepositoryImpl>());
  });

  test(
      'FortniteMapRepositoryImpl should retrieve FortniteMap object when success call retrieveFortniteMap',
      () async {
    dioAdapter.onGet(
      'map',
      (server) => server.reply(
        200,
        const FortniteMap(
          fortniteMapUrl: 'https://fortnite-api.com/images/map_en.png',
        ),
        delay: const Duration(seconds: 1),
      ),
      data: Matchers.any,
    );

    final result = await fortniteMapRepositoryImpl.retrieveFortniteMap();

    expect(
      result,
      mockFortniteMapModel,
    );
  });

  test(
      'FortniteMapRepositoryImpl should throw exception when call retrieveFortniteMap',
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

    final result = fortniteMapRepositoryImpl.retrieveFortniteMap();

    expect(
      result,
      throwsA(const TypeMatcher<Exception>()),
    );
  });
}
