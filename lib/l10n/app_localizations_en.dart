// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get comingSoon => 'Coming soon...';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Got it';

  @override
  String get nice => 'Nice';

  @override
  String get congratulations => 'Congratulations!';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get reset => 'Reset';

  @override
  String get system => 'System';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get monday => 'Monday';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get thursday => 'Thursday';

  @override
  String get friday => 'Friday';

  @override
  String get saturday => 'Saturday';

  @override
  String get sunday => 'Sunday';

  @override
  String get mondayShort => 'Mon';

  @override
  String get tuesdayShort => 'Tue';

  @override
  String get wednesdayShort => 'Wed';

  @override
  String get thursdayShort => 'Thu';

  @override
  String get fridayShort => 'Fri';

  @override
  String get saturdayShort => 'Sat';

  @override
  String get sundayShort => 'Sun';

  @override
  String get settingsResetConfirmationTitle => 'Reset all values?';

  @override
  String get settingsResetConfirmationBody =>
      'Every setting will return to its initial state if you continue.';

  @override
  String get shuffle => 'Shuffle';

  @override
  String get cheat => 'Cheat';

  @override
  String get back => 'Back';

  @override
  String get apply => 'Apply';

  @override
  String get color => 'Color';

  @override
  String get theme => 'Theme';

  @override
  String get music => 'Music';

  @override
  String get effects => 'Effects';

  @override
  String get profile => 'Profile';

  @override
  String get statistics => 'Statistics';

  @override
  String get about => 'About';

  @override
  String get help => 'Help';

  @override
  String get picture => 'Picture';

  @override
  String get username => 'Username';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves moves',
      one: 'only 1 move',
      zero: 'no moves',
    );
    return 'You won using $_temp0!';
  }

  @override
  String get share => 'Share';

  @override
  String get shareTitle => 'My most recent Cubik victory!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves moves',
      one: 'only 1 move',
      zero: 'no moves',
    );
    return 'I just won a game of Cubik using $_temp0! See if you can do better at cubik.dy0gu.com, or using the app.';
  }

  @override
  String get helpTitle => 'Learn how to play Cubik!';

  @override
  String get helpBodyFirst =>
      'The goal is simple, you need to sort the pieces into their ordered position, from top left to bottom right.';

  @override
  String get helpBodySecond =>
      'Move the pieces around by using the empty space. When a piece is in the correct position, it will show a new border color.';

  @override
  String get pageNotFound =>
      'We couldn\'t find this page, maybe you shouldn\'t be here...';

  @override
  String get pageError =>
      'There was an error while loading this page, please try again later!';

  @override
  String get localDataWarning =>
      'All app data is stored locally, switching devices or clearing the app cache will delete it!';

  @override
  String get statisticMovesTaken => 'Moves taken per game';

  @override
  String get statisticGamesPlayed => 'Games played per day';

  @override
  String get statisticBoardSizesPlayed => 'Board size per game';

  @override
  String get seedCopied => 'Seed copied to clipboard!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon more games',
      one: '1 more game',
    );
    return 'Win $_temp0 to see your win history!';
  }

  @override
  String get increase => 'Increase';

  @override
  String get decrease => 'Decrease';

  @override
  String get helpBodyThird =>
      'You can also use the shuffle button to randomize the board, or the increase/decrease buttons to change its size.';

  @override
  String get helpBodyFourth =>
      'In your profile you will find a graph of your win history. You can tap on each node for more details on that specific game.';

  @override
  String get date => 'Date';

  @override
  String get time => 'Time';

  @override
  String get moves => 'Moves';

  @override
  String get size => 'Size';

  @override
  String get board => 'Board';
}
