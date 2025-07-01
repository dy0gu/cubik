// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get comingSoon => '即将推出...';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get ok => '确定';

  @override
  String get gotIt => '知道了';

  @override
  String get nice => '不错';

  @override
  String get congratulations => '恭喜！';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get delete => '删除';

  @override
  String get reset => '重置';

  @override
  String get system => '系统';

  @override
  String get light => '亮';

  @override
  String get dark => '暗';

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get monday => '星期一';

  @override
  String get tuesday => '星期二';

  @override
  String get wednesday => '星期三';

  @override
  String get thursday => '星期四';

  @override
  String get friday => '星期五';

  @override
  String get saturday => '星期六';

  @override
  String get sunday => '星期日';

  @override
  String get mondayShort => '周一';

  @override
  String get tuesdayShort => '周二';

  @override
  String get wednesdayShort => '周三';

  @override
  String get thursdayShort => '周四';

  @override
  String get fridayShort => '周五';

  @override
  String get saturdayShort => '周六';

  @override
  String get sundayShort => '周日';

  @override
  String get settingsResetConfirmationTitle => '重置所有值？';

  @override
  String get settingsResetConfirmationBody => '如果继续，每个设置将恢复到初始状态。';

  @override
  String get shuffle => '洗牌';

  @override
  String get cheat => '作弊';

  @override
  String get back => '返回';

  @override
  String get apply => '应用';

  @override
  String get color => '颜色';

  @override
  String get theme => '主题';

  @override
  String get music => '音乐';

  @override
  String get effects => '效果';

  @override
  String get profile => '个人资料';

  @override
  String get statistics => '统计';

  @override
  String get about => '关于';

  @override
  String get help => '帮助';

  @override
  String get picture => '图片';

  @override
  String get username => '用户名';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves次移动',
      one: '仅移动一次',
      zero: '不需要移动',
    );
    return '您赢得了$_temp0！';
  }

  @override
  String get share => '分享';

  @override
  String get shareTitle => '我最近在Cubik中的胜利！';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves次移动',
      one: '仅移动一次',
      zero: '不需要移动',
    );
    return '我刚刚在Cubik中赢得了一场比赛，使用了$_temp0！看看您能否在cubik.dy0gu.com或使用应用程序做得更好。';
  }

  @override
  String get helpTitle => '学习如何玩Cubik！';

  @override
  String get helpBodyFirst => '目标很简单，您需要将各个方块排序到它们的有序位置，从左上到右下。';

  @override
  String get helpBodySecond => '通过使用空白空间移动方块。当方块位于正确位置时，将显示新的边框颜色。';

  @override
  String get pageNotFound => '我们找不到此页面，也许您不应该在这里...';

  @override
  String get pageError => '加载此页面时出错，请稍后重试！';

  @override
  String get localDataWarning => '所有应用程序数据都存储在本地，切换设备或清除应用程序缓存将删除它！';

  @override
  String get statisticMovesTaken => '每场游戏的移动次数';

  @override
  String get statisticGamesPlayed => '每天玩的游戏数量';

  @override
  String get statisticBoardSizesPlayed => '每场游戏的棋盘大小';

  @override
  String get seedCopied => '种子已复制到剪贴板！';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon 更多游戏',
      one: '1 更多游戏',
    );
    return '赢得 $_temp0 来查看你的胜利历史!';
  }

  @override
  String get increase => '增加';

  @override
  String get decrease => '减少';

  @override
  String get helpBodyThird => '您还可以使用混洗按钮来随机化游戏板，或使用增加/减少按钮来更改其大小。';

  @override
  String get helpBodyFourth =>
      '在您的个人资料中，您将找到您的胜利历史图表。您可以点击每个节点以获取有关该特定游戏的更多详细信息。';

  @override
  String get date => '日期';

  @override
  String get time => '时间';

  @override
  String get moves => '移动';

  @override
  String get size => '尺寸';

  @override
  String get board => '棋盘';
}
