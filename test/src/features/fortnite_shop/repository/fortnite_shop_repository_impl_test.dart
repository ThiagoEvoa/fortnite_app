import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../../test_helper/test_helper.dart';

class MockFortniteShopRepository extends Mock
    implements FortniteShopRepositoryImpl {}

class MockDio extends Mock implements Dio {}

void main() {
  late MockFortniteShopRepository mockFortniteShopRepository;
  late FortniteShopRepositoryImpl fortniteShopRepositoryImpl;
  late DioAdapter dioAdapter;
  late Provider<Dio> dioProvider;

  setUp(() {
    mockFortniteShopRepository = MockFortniteShopRepository();
    dioProvider = DioMock.createMock();
    dioAdapter = DioMock.dioAdapter;

    fortniteShopRepositoryImpl = FortniteShopRepositoryImpl(
      ProviderContainer(
        overrides: [
          fortniteShopRepository.overrideWithValue(mockFortniteShopRepository),
        ],
      ).read(dioProvider),
    );
  });

  test('FortniteShopRepositoryImpl should return correct type', () {
    final provider = ProviderContainer().read(fortniteShopRepository);

    expect(provider, isA<FortniteShopRepositoryImpl>());
  });

  test(
      'FortniteShopRepositoryImpl should retrieve FortniteShop object when success call retrieveFortniteShop',
      () async {
    dioAdapter.onGet(
      'shop',
      (server) => server.reply(
        200,
        mockFortniteShopModel,
        delay: const Duration(seconds: 1),
      ),
      data: Matchers.any,
    );

    final result = await fortniteShopRepositoryImpl.retrieveFortniteShop();

    expect(
      result,
      mockFortniteShopModel,
    );
  });

  test(
      'FortniteShopRepositoryImpl should throw exception when call retrieveFortniteShop',
      () async {
    dioAdapter.onGet(
      'Shop',
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

    final result = fortniteShopRepositoryImpl.retrieveFortniteShop();

    expect(
      result,
      throwsA(const TypeMatcher<Exception>()),
    );
  });
}
