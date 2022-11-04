import '../../../../test_helper/test_helper.dart';

class MockFortniteShopProvider extends Mock implements FortniteShopProvider {}

class MockFortniteShopRepository extends Mock
    implements FortniteShopRepositoryImpl {}

void main() {
  late FortniteShopRepositoryImpl mockFortniteRepositoryImpl;

  setUpAll(() {
    configureFallback();
  });

  setUp(() {
    mockFortniteRepositoryImpl = MockFortniteShopRepository();
  });

  testWidgets('FortniteShopScreen should present all widgets correctly',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteShop(),
    ).thenAnswer((_) async => mockFortniteShopModel);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteShopRepository.overrideWithValue(mockFortniteRepositoryImpl),
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
              child: FortniteShopScreen(),
            ),
          ),
        ),
      ),
    );

    final containerFinder =
        find.byKey(const Key('fortnite_shop_listview_widget'));

    expect(containerFinder, findsOneWidget);

    await tester.pump();
  });

  testWidgets('FortniteShopScreen should present loading widget correctly',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteShop(),
    ).thenAnswer((_) async {
      await Future<void>.delayed(const Duration(seconds: 3));
      return mockFortniteShopModel;
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteShopRepository.overrideWithValue(mockFortniteRepositoryImpl),
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
              child: FortniteShopScreen(),
            ),
          ),
        ),
      ),
    );

    await tester.pump();

    final loadingFinder = find.byKey(const Key('fortnite_shop_loading_widget'));

    expectSync(loadingFinder, findsOneWidget);

    await tester.pumpAndSettle();
  });

  testWidgets(
      'FortniteShopScreen should present error widgets when an exception is thrown',
      (tester) async {
    when(
      () => mockFortniteRepositoryImpl.retrieveFortniteShop(),
    ).thenThrow(DioError(requestOptions: RequestOptions(path: '')));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          fortniteShopRepository.overrideWithValue(mockFortniteRepositoryImpl),
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
              child: FortniteShopScreen(),
            ),
          ),
        ),
      ),
    );

    final containerFinder =
        find.byKey(const Key('fortnite_shop_listview_widget'));

    expect(containerFinder, findsOneWidget);

    await tester.pump();

    final finder = find.byKey(const Key('fortnite_shop_error_widget'));

    expect(finder, findsOneWidget);
  });
}
