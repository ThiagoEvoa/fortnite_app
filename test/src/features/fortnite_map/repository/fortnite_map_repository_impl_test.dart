import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/model/fortnite_map.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

void main() {
  late MockFortniteMapRepository mockFortniteMapRepository;

  setUp(() {
    mockFortniteMapRepository = MockFortniteMapRepository();
  });

  test('Get response when success call', () async {
    when(() => mockFortniteMapRepository.retrieveFortniteMap())
        .thenAnswer((_) => Future.value(FortniteMap.initialState()));

    final response = await mockFortniteMapRepository.retrieveFortniteMap();

    expect(response, FortniteMap.initialState());
  });
}
