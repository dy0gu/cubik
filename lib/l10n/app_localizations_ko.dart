// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get comingSoon => '곧 출시됩니다...';

  @override
  String get yes => '예';

  @override
  String get no => '아니요';

  @override
  String get ok => '확인';

  @override
  String get gotIt => '알겠어요';

  @override
  String get nice => '잘 했어요';

  @override
  String get congratulations => '축하합니다!';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get delete => '삭제';

  @override
  String get reset => '재설정';

  @override
  String get system => '시스템';

  @override
  String get light => '밝게';

  @override
  String get dark => '어둡게';

  @override
  String get settings => '설정';

  @override
  String get language => '언어';

  @override
  String get monday => '월요일';

  @override
  String get tuesday => '화요일';

  @override
  String get wednesday => '수요일';

  @override
  String get thursday => '목요일';

  @override
  String get friday => '금요일';

  @override
  String get saturday => '토요일';

  @override
  String get sunday => '일요일';

  @override
  String get mondayShort => '월';

  @override
  String get tuesdayShort => '화';

  @override
  String get wednesdayShort => '수';

  @override
  String get thursdayShort => '목';

  @override
  String get fridayShort => '금';

  @override
  String get saturdayShort => '토';

  @override
  String get sundayShort => '일';

  @override
  String get settingsResetConfirmationTitle => '모든 값을 재설정하시겠습니까?';

  @override
  String get settingsResetConfirmationBody => '계속하면 모든 설정이 초기 상태로 돌아갑니다.';

  @override
  String get shuffle => '섞기';

  @override
  String get cheat => '속임수';

  @override
  String get back => '뒤로';

  @override
  String get apply => '적용';

  @override
  String get color => '색상';

  @override
  String get theme => '테마';

  @override
  String get music => '음악';

  @override
  String get effects => '효과';

  @override
  String get profile => '프로필';

  @override
  String get statistics => '통계';

  @override
  String get about => '정보';

  @override
  String get help => '도움말';

  @override
  String get picture => '사진';

  @override
  String get username => '사용자 이름';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves 회 움직임으로 이겼습니다!',
      one: '1회 움직임으로 이겼습니다!',
      zero: '움직임 없이 이겼습니다!',
    );
    return '$_temp0';
  }

  @override
  String get share => '공유';

  @override
  String get shareTitle => '나의 최신 Cubik 승리!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves 회 움직임으로 이겼습니다!',
      one: '1회 움직임으로 이겼습니다!',
      zero: '움직임 없이 이겼습니다!',
    );
    return '$_temp0 cubik.win에서 내 성적을 확인하고 도전하세요.';
  }

  @override
  String get helpTitle => 'Cubik 플레이 방법 배우기!';

  @override
  String get helpBodyFirst => '목표는 간단합니다. 조각을 왼쪽 위부터 오른쪽 아래로 순서대로 정렬해야 합니다.';

  @override
  String get helpBodySecond =>
      '빈 공간을 사용하여 조각을 이동합니다. 조각이 올바른 위치에 있으면 새로운 테두리 색상이 표시됩니다.';

  @override
  String get pageNotFound => '이 페이지를 찾을 수 없습니다. 여기 있어서는 안 될지도 모릅니다...';

  @override
  String get pageError => '이 페이지를 로드하는 중에 오류가 발생했습니다. 나중에 다시 시도하세요!';

  @override
  String get localDataWarning =>
      '모든 앱 데이터가 로컬에 저장됩니다. 장치를 변경하거나 앱 캐시를 지우면 데이터가 삭제됩니다!';

  @override
  String get statisticMovesTaken => '게임당 움직임 수';

  @override
  String get statisticGamesPlayed => '일일 플레이 횟수';

  @override
  String get statisticBoardSizesPlayed => '게임당 보드 크기';

  @override
  String get seedCopied => '시드가 클립보드에 복사되었습니다!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon게임 더',
      one: '1게임 더',
    );
    return '승리 기록을 보려면 $_temp0 이겨야 합니다!';
  }

  @override
  String get increase => '증가';

  @override
  String get decrease => '감소';

  @override
  String get helpBodyThird =>
      '셔플 버튼을 사용하여 보드를 무작위로 섞거나 크기를 변경하기 위해 증가/감소 버튼을 사용할 수도 있습니다.';

  @override
  String get helpBodyFourth =>
      '프로필에는 승리 이력의 그래프가 있습니다. 각 노드를 탭하여 해당 게임에 대한 자세한 내용을 볼 수 있습니다.';

  @override
  String get date => '날짜';

  @override
  String get time => '시간';

  @override
  String get moves => '움직임';

  @override
  String get size => '크기';

  @override
  String get board => '게임 보드';
}
