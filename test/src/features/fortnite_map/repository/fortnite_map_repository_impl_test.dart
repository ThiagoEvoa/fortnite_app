import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_util/test_util.dart';

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
    Dio dio = Dio(BaseOptions(baseUrl: 'https://example.com/'));
    dioAdapter = DioAdapter(
      dio: dio,
      matcher: const FullHttpRequestMatcher(),
    );
    dio.httpClientAdapter = dioAdapter;
    dioProvider = Provider(((ref) {
      return dio;
    }));

    fortniteMapRepositoryImpl =
        FortniteMapRepositoryImpl(ProviderContainer(overrides: [
      fortniteMapRepository.overrideWithValue(mockFortniteMapRepository),
    ]).read(dioProvider));
  });

  test('Retrieve FortniteMap object when success call retrieveFortniteMap',
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

    final result = fortniteMapRepositoryImpl.retrieveFortniteMap();

    expect(
      result,
      throwsA(const TypeMatcher<Exception>()),
    );
  });
}
