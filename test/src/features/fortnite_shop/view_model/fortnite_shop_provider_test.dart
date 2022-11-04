import '../../../../test_helper/test_helper.dart';

class MockFortniteShopRepository extends Mock
    implements FortniteShopRepositoryImpl {}

void main() {
  late MockFortniteShopRepository mockFortniteShopRepository;
  late FortniteShopProvider fortniteShopProviderMock;
  late AsyncValue<FortniteShop> stateMock;

  setUp(() {
    mockFortniteShopRepository = MockFortniteShopRepository();
    fortniteShopProviderMock = FortniteShopProvider(mockFortniteShopRepository);
  });

  test('FortniteShopProvider should return correct type', () {
    final provider = ProviderContainer().read(fortniteShopProvider);

    expect(
      provider,
      isA<AsyncData<FortniteShop>>(),
    );
  });

  test(
      'FortniteShopProvider should retrieve FortniteShop object when success call retrieveFortniteShop',
      () async {
    when(() => mockFortniteShopRepository.retrieveFortniteShop()).thenAnswer(
      (_) async => mockFortniteShopModel,
    );

    await fortniteShopProviderMock.retrieveFortniteShop();

    fortniteShopProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.value,
      isA<FortniteShop>(),
    );
  });

  test(
      'FortniteShopProvider should should throw exception when call retrieveFortniteShop',
      () async {
    when(() => mockFortniteShopRepository.retrieveFortniteShop())
        .thenThrow(Exception());

    await fortniteShopProviderMock.retrieveFortniteShop();

    fortniteShopProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.error,
      const TypeMatcher<Exception>(),
    );
  });
}
