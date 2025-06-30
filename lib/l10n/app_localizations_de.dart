// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get comingSoon => 'Demnächst...';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get nice => 'Schön';

  @override
  String get congratulations => 'Herzlichen Glückwunsch!';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get system => 'System';

  @override
  String get light => 'Hell';

  @override
  String get dark => 'Dunkel';

  @override
  String get settings => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get monday => 'Montag';

  @override
  String get tuesday => 'Dienstag';

  @override
  String get wednesday => 'Mittwoch';

  @override
  String get thursday => 'Donnerstag';

  @override
  String get friday => 'Freitag';

  @override
  String get saturday => 'Samstag';

  @override
  String get sunday => 'Sonntag';

  @override
  String get mondayShort => 'Mo';

  @override
  String get tuesdayShort => 'Di';

  @override
  String get wednesdayShort => 'Mi';

  @override
  String get thursdayShort => 'Do';

  @override
  String get fridayShort => 'Fr';

  @override
  String get saturdayShort => 'Sa';

  @override
  String get sundayShort => 'So';

  @override
  String get settingsResetConfirmationTitle => 'Alle Werte zurücksetzen?';

  @override
  String get settingsResetConfirmationBody =>
      'Alle Einstellungen werden auf ihren ursprünglichen Zustand zurückgesetzt, wenn Sie fortfahren.';

  @override
  String get shuffle => 'Mischen';

  @override
  String get cheat => 'Schummeln';

  @override
  String get back => 'Zurück';

  @override
  String get apply => 'Anwenden';

  @override
  String get color => 'Farbe';

  @override
  String get theme => 'Thema';

  @override
  String get music => 'Musik';

  @override
  String get effects => 'Effekte';

  @override
  String get profile => 'Profil';

  @override
  String get statistics => 'Statistiken';

  @override
  String get about => 'Über';

  @override
  String get help => 'Hilfe';

  @override
  String get picture => 'Bild';

  @override
  String get username => 'Benutzername';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves Züge',
      one: 'nur 1 Zug',
      zero: 'keine Züge',
    );
    return 'Du hast gewonnen und dabei $_temp0 gemacht!';
  }

  @override
  String get share => 'Teilen';

  @override
  String get shareTitle => 'Mein neuester Cubik-Sieg!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves Züge',
      one: 'nur 1 Zug',
      zero: 'keine Züge',
    );
    return 'Ich habe gerade ein Spiel Cubik gewonnen und dabei $_temp0 gemacht! Sieh nach, ob du es besser machen kannst auf cubik.win oder mit der App.';
  }

  @override
  String get helpTitle => 'Lerne, Cubik zu spielen!';

  @override
  String get helpBodyFirst =>
      'Das Ziel ist einfach: Du musst die Stücke in ihre geordnete Position bringen, von oben links nach unten rechts.';

  @override
  String get helpBodySecond =>
      'Bewege die Stücke, indem du den leeren Platz benutzt. Wenn ein Stück an der richtigen Stelle ist, wird es eine neue Rahmenfarbe anzeigen.';

  @override
  String get pageNotFound =>
      'Wir konnten diese Seite nicht finden, vielleicht solltest du hier nicht sein...';

  @override
  String get pageError =>
      'Beim Laden dieser Seite ist ein Fehler aufgetreten. Bitte versuche es später erneut!';

  @override
  String get localDataWarning =>
      'Alle App-Daten werden lokal gespeichert. Wenn Sie das Gerät wechseln oder den App-Cache löschen, werden sie gelöscht!';

  @override
  String get statisticMovesTaken => 'Gemachte Züge pro Spiel';

  @override
  String get statisticGamesPlayed => 'Gespielte Spiele pro Tag';

  @override
  String get statisticBoardSizesPlayed => 'Brettgröße pro Spiel';

  @override
  String get seedCopied => 'Saatgut in die Zwischenablage kopiert!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon weitere Spiele',
      one: 'ein weiteres Spiel',
    );
    return 'Gewinne $_temp0, um deinen Gewinnverlauf zu sehen!';
  }

  @override
  String get increase => 'Erhöhen';

  @override
  String get decrease => 'Verringern';

  @override
  String get helpBodyThird =>
      'Sie können auch die Mischschaltfläche verwenden, um das Brett zu randomisieren, oder die Schaltflächen zum Erhöhen/Verringern, um seine Größe zu ändern.';

  @override
  String get helpBodyFourth =>
      'In Ihrem Profil finden Sie ein Diagramm Ihres Gewinnverlaufs. Sie können auf jeden Knoten tippen, um weitere Details zu diesem bestimmten Spiel zu erhalten.';

  @override
  String get date => 'Datum';

  @override
  String get time => 'Zeit';

  @override
  String get moves => 'Züge';

  @override
  String get size => 'Größe';

  @override
  String get board => 'Brett';
}
