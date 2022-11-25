import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fortnite_app/src/util/util.dart';

import '../../../test_helper/test_helper.dart';

class MockUserStatsRepository extends Mock implements UserStatsRepositoryImpl {}

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

void main() {
  late UserStatsProvider mockUserStatsProvider;
  late UserStatsRepositoryImpl mockFortniteRepositoryImpl;

  late FortniteMapProvider mockFortniteMapProvider;
  late FortniteMapRepositoryImpl mockFortniteMapRepositoryImpl;

  setUp(() {
    mockFortniteRepositoryImpl = MockUserStatsRepository();
    mockUserStatsProvider = UserStatsProvider(mockFortniteRepositoryImpl);

    mockFortniteMapRepositoryImpl = MockFortniteMapRepository();
    mockFortniteMapProvider =
        FortniteMapProvider(mockFortniteMapRepositoryImpl);
  });

  setUpAll(() {
    configureFallback();
  });

  testWidgets('Show Entrypoint widget correctly', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          userStatsProvider.overrideWith(((ref) => mockUserStatsProvider)),
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
            child: EntryPointWidget(),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('entry_point_widget'));

    expect(finder, findsOneWidget);
  });

  testWidgets(
      'Show fortnite map screen when tap on AnimatedBottomNavigationBar',
      (tester) async {
    when(
      () => mockFortniteMapRepositoryImpl.retrieveFortniteMap(),
    ).thenAnswer((_) async => mockFortniteMapModel);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          userStatsProvider.overrideWith(((ref) => mockUserStatsProvider)),
          fortniteMapProvider.overrideWith(((ref) => mockFortniteMapProvider)),
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
            child: EntryPointWidget(),
          ),
        ),
      ),
    );

    final finder = find.byType(AnimatedBottomNavigationBar);

    await tester.tap(finder);

    await tester.pumpAndSettle();

    final imageFinder = find.byKey(const Key('fortnite_map_image_widget'));

    expect(imageFinder, findsOneWidget);
  });
}
