import 'package:fortnite_app/src/features/features.dart';

import '../../../../test_helper/test_helper.dart';

class MockFortniteMapProvider extends Mock implements FortniteMapProvider {}

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

void main() {
  late FortniteMapRepositoryImpl mockFortniteRepositoryImpl;

  setUpAll(() {
    configureFallback();
  });

  setUp(() {
    mockFortniteRepositoryImpl = MockFortniteMapRepository();
  });

  testWidgets('FortniteMapScreen should present all widgets correctly',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteMap(),
    ).thenAnswer((_) async => mockFortniteMapModel);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteMapRepository.overrideWithValue(mockFortniteRepositoryImpl),
        ],
        child: Localizations(
          delegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          locale: const Locale('en', ''),
          child: const MediaQuery(
            data: MediaQueryData(),
            child: Material(
              child: FortniteMapScreen(),
            ),
          ),
        ),
      ),
    );

    final containerFinder =
        find.byKey(const Key('fortnite_map_container_widget'));

    expect(containerFinder, findsOneWidget);

    await tester.pump();

    final finder = find.byKey(const Key('fortnite_map_image_widget'));

    expect(finder, findsOneWidget);
  });

  testWidgets('FortniteMapScreen should present loading widget correctly',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteMap(),
    ).thenAnswer((_) async {
      await Future<void>.delayed(const Duration(seconds: 3));
      return mockFortniteMapModel;
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteMapRepository.overrideWithValue(mockFortniteRepositoryImpl),
        ],
        child: Localizations(
          delegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          locale: const Locale('en', ''),
          child: const MediaQuery(
            data: MediaQueryData(),
            child: Material(
              child: FortniteMapScreen(),
            ),
          ),
        ),
      ),
    );

    await tester.pump();

    final loadingFinder = find.byKey(const Key('fortnite_map_loading_widget'));

    expectSync(loadingFinder, findsOneWidget);

    await tester.pumpAndSettle();
  });

  testWidgets(
      'FortniteMapScreen should present error widgets when an exception is thrown',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteMap(),
    ).thenThrow(DioError(requestOptions: RequestOptions(path: '')));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteMapRepository.overrideWithValue(mockFortniteRepositoryImpl),
        ],
        child: Localizations(
          delegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          locale: const Locale('en', ''),
          child: const MediaQuery(
            data: MediaQueryData(),
            child: Material(
              child: FortniteMapScreen(),
            ),
          ),
        ),
      ),
    );

    final containerFinder =
        find.byKey(const Key('fortnite_map_container_widget'));

    expect(containerFinder, findsOneWidget);

    await tester.pump();

    final finder = find.byKey(const Key('fortnite_map_error_widget'));

    expect(finder, findsOneWidget);
  });
}
