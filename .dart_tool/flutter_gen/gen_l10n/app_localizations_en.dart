import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counter_phrase => 'You have pushed the button this many times:';

  @override
  String get internet_exception_message => 'No internet connection.';
}
