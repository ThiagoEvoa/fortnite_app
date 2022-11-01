import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';
import 'package:fortnite_app/src/features/fortnite_map/view_model/fortnite_map_provider.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_util/test_util.dart';

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

  test('Should', () {
    final provider = ProviderContainer().read(fortniteMapProvider);

    expect(
      provider,
      isA<AsyncData<FortniteMap>>(),
    );
  });

  test('Should', () async {
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

  test('Should not', () async {
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
