// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get comingSoon => '近日公開...';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => '了解しました';

  @override
  String get nice => '素晴らしい';

  @override
  String get congratulations => 'おめでとうございます！';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get delete => '削除';

  @override
  String get reset => 'リセット';

  @override
  String get system => 'システム';

  @override
  String get light => 'ライト';

  @override
  String get dark => 'ダーク';

  @override
  String get settings => '設定';

  @override
  String get language => '言語';

  @override
  String get monday => '月曜日';

  @override
  String get tuesday => '火曜日';

  @override
  String get wednesday => '水曜日';

  @override
  String get thursday => '木曜日';

  @override
  String get friday => '金曜日';

  @override
  String get saturday => '土曜日';

  @override
  String get sunday => '日曜日';

  @override
  String get mondayShort => '月';

  @override
  String get tuesdayShort => '火';

  @override
  String get wednesdayShort => '水';

  @override
  String get thursdayShort => '木';

  @override
  String get fridayShort => '金';

  @override
  String get saturdayShort => '土';

  @override
  String get sundayShort => '日';

  @override
  String get settingsResetConfirmationTitle => 'すべての値をリセットしますか？';

  @override
  String get settingsResetConfirmationBody => '続行すると、すべての設定が初期状態に戻ります。';

  @override
  String get shuffle => 'シャッフル';

  @override
  String get cheat => 'チート';

  @override
  String get back => '戻る';

  @override
  String get apply => '適用する';

  @override
  String get color => '色';

  @override
  String get theme => 'テーマ';

  @override
  String get music => '音楽';

  @override
  String get effects => '効果';

  @override
  String get profile => 'プロフィール';

  @override
  String get statistics => '統計';

  @override
  String get about => '情報';

  @override
  String get help => 'ヘルプ';

  @override
  String get picture => '画像';

  @override
  String get username => 'ユーザー名';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves 回の動作で勝ちました！',
      one: '1回の動作で勝ちました！',
      zero: '動かずに勝ちました！',
    );
    return '$_temp0';
  }

  @override
  String get share => '共有';

  @override
  String get shareTitle => '私の最新のCubikの勝利！';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves 回の動作で勝ちました！',
      one: '1回の動作で勝ちました！',
      zero: '動かずに勝ちました！',
    );
    return '$_temp0 cubik.win で私の成績を見て、あなたも挑戦してみてください。';
  }

  @override
  String get helpTitle => 'Cubikのプレイ方法を学ぶ！';

  @override
  String get helpBodyFirst => '目標はシンプルです。ピースを左上から右下に順番に並べる必要があります。';

  @override
  String get helpBodySecond =>
      '空きスペースを使ってピースを移動します。ピースが正しい位置にあると、新しい枠の色が表示されます。';

  @override
  String get pageNotFound => 'このページが見つかりませんでした。ここにいるべきではないかもしれません...';

  @override
  String get pageError => 'このページの読み込み中にエラーが発生しました。後でもう一度お試しください！';

  @override
  String get localDataWarning =>
      'すべてのアプリデータはローカルに保存されます。デバイスを切り替えるか、アプリのキャッシュをクリアすると削除されます！';

  @override
  String get statisticMovesTaken => 'ゲームあたりの動作数';

  @override
  String get statisticGamesPlayed => '1日あたりのプレイ回数';

  @override
  String get statisticBoardSizesPlayed => 'ゲームあたりのボードサイズ';

  @override
  String get seedCopied => 'シードがクリップボードにコピーされました！';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWonつのゲーム',
      one: '1つのゲーム',
    );
    return '勝利の履歴を確認するには、さらに$_temp0を勝利してください!';
  }

  @override
  String get increase => '増やす';

  @override
  String get decrease => '減らす';

  @override
  String get helpBodyThird =>
      'また、シャッフルボタンを使用してボードをランダム化したり、サイズを変更するための増減ボタンを使用することもできます。';

  @override
  String get helpBodyFourth =>
      'プロフィールには勝利履歴のグラフが表示されます。各ノードをタップして、その特定のゲームの詳細を表示できます。';

  @override
  String get date => '日付';

  @override
  String get time => '時間';

  @override
  String get moves => '手順';

  @override
  String get size => 'サイズ';

  @override
  String get board => 'ボード';
}
