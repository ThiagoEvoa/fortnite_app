import '../../../../test_helper/test_helper.dart';

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

void main() {
  late MockFortniteMapRepository mockFortniteMapRepository;
  late FortniteMapProvider fortniteMapProviderMock;
  late AsyncValue<FortniteMap> stateMock;

  setUp(() {
    mockFortniteMapRepository = MockFortniteMapRepository();
    fortniteMapProviderMock = FortniteMapProvider(mockFortniteMapRepository);
  });

  test('FortniteMapProvider should return correct type', () {
    final provider = ProviderContainer().read(fortniteMapProvider);

    expect(
      provider,
      isA<AsyncData<FortniteMap>>(),
    );
  });

  test(
      'FortniteMapProvider should retrieve FortniteMap object when success call retrieveFortniteMap',
      () async {
    when(() => mockFortniteMapRepository.retrieveFortniteMap()).thenAnswer(
      (_) async => mockFortniteMapModel,
    );

    await fortniteMapProviderMock.retrieveFortniteMap();

    fortniteMapProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.value,
      isA<FortniteMap>(),
    );
  });

  test(
      'FortniteMapProvider should should throw exception when call retrieveFortniteMap',
      () async {
    when(() => mockFortniteMapRepository.retrieveFortniteMap())
        .thenThrow(Exception());

    await fortniteMapProviderMock.retrieveFortniteMap();

    fortniteMapProviderMock.addListener(
      (state) => stateMock = state,
    );

    expect(
      stateMock.error,
      const TypeMatcher<Exception>(),
    );
  });
}
