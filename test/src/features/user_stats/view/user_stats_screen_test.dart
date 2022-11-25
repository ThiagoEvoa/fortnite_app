// ignore_for_file: invalid_use_of_protected_member

import '../../../../test_helper/test_helper.dart';

class MockUserStatsRepository extends Mock implements UserStatsRepositoryImpl {}

class MockStackTrace extends Mock implements StackTrace {}

void main() {
  late UserStatsProvider mockUserStatsProvider;
  late UserStatsRepositoryImpl mockFortniteRepositoryImpl;
  setUpAll(() {
    configureFallback();
  });

  setUp(() {
    mockFortniteRepositoryImpl = MockUserStatsRepository();
    mockUserStatsProvider = UserStatsProvider(mockFortniteRepositoryImpl);
  });

  testWidgets(
      'UserStatsScreen should present user stats container widget correctly',
      (tester) async {
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
            child: Material(
              child: UserStatsScreen(),
            ),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('user_stats_container_widget'));

    expect(finder, findsOneWidget);
  });

  testWidgets(
      'UserStatsScreen should perform click in user stats search widget correctly',
      (tester) async {
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
            child: Material(
              child: UserStatsScreen(),
            ),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('user_stats_search_widget'));
    await tester.tap(finder);

    await tester.pump();

    expect(finder, findsOneWidget);
  });

  testWidgets(
      'UserStatsScreen should present user stats column widget correctly',
      (tester) async {
    mockUserStatsProvider.state = const AsyncValue.data(mockUserStatsModel);

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
            child: Material(
              child: UserStatsScreen(),
            ),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('user_stats_column_widget'));

    expect(finder, findsOneWidget);
  });

  testWidgets('UserStatsScreen should present loading widget correctly',
      (tester) async {
    mockUserStatsProvider.state = const AsyncValue.loading();

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
            child: Material(
              child: UserStatsScreen(),
            ),
          ),
        ),
      ),
    );

    await tester.pump();

    final loadingFinder = find.byKey(const Key('user_stats_loading_widget'));

    expectSync(loadingFinder, findsOneWidget);

    mockUserStatsProvider.state = AsyncValue.data(UserStats.initialState());

    await tester.pumpAndSettle();
  });

  testWidgets(
      'UserStatsScreen should present error widgets when an exception is thrown',
      (tester) async {
    mockUserStatsProvider.state = AsyncValue.error(
      DioError(requestOptions: RequestOptions(path: '')),
      MockStackTrace(),
    );

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
            child: Material(
              child: UserStatsScreen(),
            ),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('user_stats_error_widget'));

    expect(finder, findsOneWidget);
  });
}
