// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get comingSoon => 'เร็ว ๆ นี้...';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่';

  @override
  String get ok => 'ตกลง';

  @override
  String get gotIt => 'เข้าใจแล้ว';

  @override
  String get nice => 'ดีมาก';

  @override
  String get congratulations => 'ยินดีด้วย!';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get delete => 'ลบ';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get system => 'ระบบ';

  @override
  String get light => 'สว่าง';

  @override
  String get dark => 'มืด';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get monday => 'วันจันทร์';

  @override
  String get tuesday => 'วันอังคาร';

  @override
  String get wednesday => 'วันพุธ';

  @override
  String get thursday => 'วันพฤหัสบดี';

  @override
  String get friday => 'วันศุกร์';

  @override
  String get saturday => 'วันเสาร์';

  @override
  String get sunday => 'วันอาทิตย์';

  @override
  String get mondayShort => 'จ.';

  @override
  String get tuesdayShort => 'อ.';

  @override
  String get wednesdayShort => 'พ.';

  @override
  String get thursdayShort => 'พฤ.';

  @override
  String get fridayShort => 'ศ.';

  @override
  String get saturdayShort => 'ส.';

  @override
  String get sundayShort => 'อา.';

  @override
  String get settingsResetConfirmationTitle => 'รีเซ็ตค่าทั้งหมดหรือไม่?';

  @override
  String get settingsResetConfirmationBody =>
      'หากคุณดำเนินการต่อ การตั้งค่าทั้งหมดจะกลับสู่สถานะเริ่มต้น';

  @override
  String get shuffle => 'สลับ';

  @override
  String get cheat => 'โกง';

  @override
  String get back => 'ย้อนกลับ';

  @override
  String get apply => 'ใช้';

  @override
  String get color => 'สี';

  @override
  String get theme => 'ธีม';

  @override
  String get music => 'เพลง';

  @override
  String get effects => 'เอฟเฟค';

  @override
  String get profile => 'โปรไฟล์';

  @override
  String get statistics => 'สถิติ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get help => 'ช่วยเหลือ';

  @override
  String get picture => 'รูปภาพ';

  @override
  String get username => 'ชื่อผู้ใช้';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves ครั้ง',
      one: 'เพียง 1 ครั้ง',
      zero: 'ไม่มีการเคลื่อนไหว',
    );
    return 'คุณชนะโดยใช้ $_temp0!';
  }

  @override
  String get share => 'แชร์';

  @override
  String get shareTitle => 'ชัยชนะล่าสุดของฉันใน Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves ครั้ง',
      one: 'เพียง 1 ครั้ง',
      zero: 'ไม่มีการเคลื่อนไหว',
    );
    return 'ฉันเพิ่งชนะเกม Cubik โดยใช้ $_temp0! ดูว่าคุณจะทำได้ดีกว่าที่ cubik.dy0gu.com หรือใช้แอป';
  }

  @override
  String get helpTitle => 'เรียนรู้วิธีเล่น Cubik!';

  @override
  String get helpBodyFirst =>
      'เป้าหมายง่าย ๆ คุณต้องเรียงชิ้นส่วนให้ตรงตามตำแหน่งเริ่มต้น จากด้านบนซ้ายไปด้านล่างขวา';

  @override
  String get helpBodySecond =>
      'ย้ายชิ้นส่วนโดยใช้พื้นที่ว่าง ขณะที่ชิ้นส่วนอยู่ในตำแหน่งที่ถูกต้อง มันจะแสดงสีขอบใหม่';

  @override
  String get pageNotFound => 'เราไม่พบหน้านี้ คุณอาจจะไม่ควรอยู่ที่นี่...';

  @override
  String get pageError =>
      'เกิดข้อผิดพลาดขณะโหลดหน้านี้ โปรดลองอีกครั้งภายหลัง!';

  @override
  String get localDataWarning =>
      'ข้อมูลแอปทั้งหมดจะถูกเก็บไว้ที่ตำแหน่งท้องถิ่น เปลี่ยนอุปกรณ์หรือล้างแคชแอปจะลบข้อมูล!';

  @override
  String get statisticMovesTaken => 'การเคลื่อนไหวต่อเกม';

  @override
  String get statisticGamesPlayed => 'จำนวนเกมที่เล่นต่อวัน';

  @override
  String get statisticBoardSizesPlayed => 'ขนาดกระดานต่อเกม';

  @override
  String get seedCopied => 'เมล็ดพันธุ์ถูกคัดลอกไปยังคลิปบอร์ด!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon เกมเพิ่ม',
      one: 'อีก 1 เกม',
    );
    return 'ชนะเพิ่ม $_temp0 เพื่อดูประวัติการชนะของคุณ!';
  }

  @override
  String get increase => 'เพิ่ม';

  @override
  String get decrease => 'ลด';

  @override
  String get helpBodyThird =>
      'คุณยังสามารถใช้ปุ่มสลับเพื่อสลับกระดานแบบสุ่ม หรือปุ่มเพิ่ม/ลดเพื่อเปลี่ยนขนาดของมันได้';

  @override
  String get helpBodyFourth =>
      'ในโปรไฟล์ของคุณคุณจะพบกราฟของประวัติชนะของคุณ คุณสามารถแตะที่ทุกๆ โหนดเพื่อดูรายละเอียดเพิ่มเติมเกี่ยวกับเกมนั้น';

  @override
  String get date => 'วันที่';

  @override
  String get time => 'เวลา';

  @override
  String get moves => 'การเคลื่อนไหว';

  @override
  String get size => 'ขนาด';

  @override
  String get board => 'กระดาน';
}
