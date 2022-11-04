import 'dart:io';

import 'package:fortnite_app/src/util/util.dart' as util;

import '../../../test_helper/test_helper.dart';

void main() {
  testWidgets('Show', (tester) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Localizations(
          delegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          locale: const Locale('en', ''),
          child: MediaQuery(
            data: const MediaQueryData(),
            child: util.ErrorWidget(
              error: DioError(
                requestOptions: RequestOptions(path: ''),
                error: const SocketException(''),
                type: DioErrorType.other,
              ),
            ),
          ),
        ),
      ),
    );

    final finder = find.byKey(const Key('error_widget'));

    expect(finder, findsOneWidget);
  });
}
