import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortnite_app/src/features/fortnite_map/repository/fortnite_map_repository_impl.dart';
import 'package:fortnite_app/src/features/fortnite_map/view/fortnite_map_screen.dart';
import 'package:fortnite_app/src/features/fortnite_map/view_model/fortnite_map_provider.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_util/test_util.dart';

class MockFortniteMapProvider extends Mock implements FortniteMapProvider {}

class MockFortniteMapRepository extends Mock
    implements FortniteMapRepositoryImpl {}

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  late FortniteMapProvider mockFortniteMapProvider;
  late FortniteMapRepositoryImpl mockFortniteRepositoryImpl;

  setUpAll(() {
    HttpOverrides.global = null;
    HttpOverrides.runZoned(
      () {},
      createHttpClient: (securityContext) => MockHttpClient(),
    );
  });

  setUp(() {
    mockFortniteRepositoryImpl = MockFortniteMapRepository();
    mockFortniteMapProvider = FortniteMapProvider(mockFortniteRepositoryImpl);
  });

  testWidgets('description', (tester) async {
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

    await mockFortniteMapProvider.retrieveFortniteMap();

    final finder = find.byKey(const Key('fortnite_map_image_widget'));

    expect(finder, findsOneWidget);
  });

  testWidgets('description error', (tester) async {
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

    await mockFortniteMapProvider.retrieveFortniteMap();

    final finder = find.byKey(const Key('fortnite_map_error_widget'));

    expect(finder, findsOneWidget);
  });
}
