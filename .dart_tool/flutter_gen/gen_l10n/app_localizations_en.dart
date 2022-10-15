import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get internet_exception_message => 'No internet connection.';

  @override
  String get wins => 'Wins';

  @override
  String get kills => 'Kills';

  @override
  String get deaths => 'Deaths';
}
