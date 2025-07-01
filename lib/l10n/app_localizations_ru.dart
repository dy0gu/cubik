// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get comingSoon => 'Скоро...';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get ok => 'ОК';

  @override
  String get gotIt => 'Понятно';

  @override
  String get nice => 'Хорошо';

  @override
  String get congratulations => 'Поздравляем!';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get delete => 'Удалить';

  @override
  String get reset => 'Сбросить';

  @override
  String get system => 'Система';

  @override
  String get light => 'Светлая';

  @override
  String get dark => 'Темная';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get monday => 'Понедельник';

  @override
  String get tuesday => 'Вторник';

  @override
  String get wednesday => 'Среда';

  @override
  String get thursday => 'Четверг';

  @override
  String get friday => 'Пятница';

  @override
  String get saturday => 'Суббота';

  @override
  String get sunday => 'Воскресенье';

  @override
  String get mondayShort => 'Пн';

  @override
  String get tuesdayShort => 'Вт';

  @override
  String get wednesdayShort => 'Ср';

  @override
  String get thursdayShort => 'Чт';

  @override
  String get fridayShort => 'Пт';

  @override
  String get saturdayShort => 'Сб';

  @override
  String get sundayShort => 'Вс';

  @override
  String get settingsResetConfirmationTitle => 'Сбросить все значения?';

  @override
  String get settingsResetConfirmationBody =>
      'Все настройки будут возвращены к начальному состоянию, если вы продолжите.';

  @override
  String get shuffle => 'Перемешать';

  @override
  String get cheat => 'Обман';

  @override
  String get back => 'Назад';

  @override
  String get apply => 'Применить';

  @override
  String get color => 'Цвет';

  @override
  String get theme => 'Тема';

  @override
  String get music => 'Музыка';

  @override
  String get effects => 'Эффекты';

  @override
  String get profile => 'Профиль';

  @override
  String get statistics => 'Статистика';

  @override
  String get about => 'О нас';

  @override
  String get help => 'Помощь';

  @override
  String get picture => 'Изображение';

  @override
  String get username => 'Имя пользователя';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves ходов',
      one: 'только 1 ход',
      zero: 'никаких ходов',
    );
    return 'Вы выиграли, используя $_temp0!';
  }

  @override
  String get share => 'Поделиться';

  @override
  String get shareTitle => 'Моя последняя победа в Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves ходов',
      one: 'только 1 ход',
      zero: 'никаких ходов',
    );
    return 'Я только что выиграл в игре Cubik, используя $_temp0! Посмотрите, сможете ли вы сделать лучше на сайте cubik.dy0gu.com или используя приложение.';
  }

  @override
  String get helpTitle => 'Узнайте, как играть в Cubik!';

  @override
  String get helpBodyFirst =>
      'Цель проста: вам нужно расположить кусочки в их упорядоченном положении, сверху слева вниз направо.';

  @override
  String get helpBodySecond =>
      'Перемещайте кусочки, используя пустое пространство. Когда кусочек находится в правильном положении, он будет показывать новый цвет рамки.';

  @override
  String get pageNotFound =>
      'Мы не смогли найти эту страницу. Возможно, вам не следует быть здесь...';

  @override
  String get pageError =>
      'Произошла ошибка при загрузке этой страницы. Пожалуйста, попробуйте позже!';

  @override
  String get localDataWarning =>
      'Все данные приложения хранятся локально. Переключение устройств или очистка кэша приложения приведет к их удалению!';

  @override
  String get statisticMovesTaken => 'Ходы за игру';

  @override
  String get statisticGamesPlayed => 'Игры в день';

  @override
  String get statisticBoardSizesPlayed => 'Размер доски за игру';

  @override
  String get seedCopied => 'Сид скопирован в буфер обмена!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon еще игры',
      one: 'еще одну игру',
    );
    return 'Выиграйте $_temp0 для просмотра истории ваших побед!';
  }

  @override
  String get increase => 'Увеличить';

  @override
  String get decrease => 'Уменьшить';

  @override
  String get helpBodyThird =>
      'Вы также можете использовать кнопку перемешивания, чтобы случайным образом изменить доску, или кнопки увеличения/уменьшения, чтобы изменить ее размер.';

  @override
  String get helpBodyFourth =>
      'В вашем профиле вы найдете график вашей истории побед. Вы можете нажать на каждый узел для получения дополнительной информации об этой конкретной игре.';

  @override
  String get date => 'Дата';

  @override
  String get time => 'Время';

  @override
  String get moves => 'Ходы';

  @override
  String get size => 'Размер';

  @override
  String get board => 'Доска';
}
