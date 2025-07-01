// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get comingSoon => 'Sắp ra mắt...';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get ok => 'OK';

  @override
  String get gotIt => 'Hiểu rồi';

  @override
  String get nice => 'Tốt quá';

  @override
  String get congratulations => 'Chúc mừng!';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get delete => 'Xóa';

  @override
  String get reset => 'Đặt lại';

  @override
  String get system => 'Hệ thống';

  @override
  String get light => 'Sáng';

  @override
  String get dark => 'Tối';

  @override
  String get settings => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get monday => 'Thứ Hai';

  @override
  String get tuesday => 'Thứ Ba';

  @override
  String get wednesday => 'Thứ Tư';

  @override
  String get thursday => 'Thứ Năm';

  @override
  String get friday => 'Thứ Sáu';

  @override
  String get saturday => 'Thứ Bảy';

  @override
  String get sunday => 'Chủ Nhật';

  @override
  String get mondayShort => 'Thứ Hai';

  @override
  String get tuesdayShort => 'Thứ Ba';

  @override
  String get wednesdayShort => 'Thứ Tư';

  @override
  String get thursdayShort => 'Thứ Năm';

  @override
  String get fridayShort => 'Thứ Sáu';

  @override
  String get saturdayShort => 'Thứ Bảy';

  @override
  String get sundayShort => 'Chủ Nhật';

  @override
  String get settingsResetConfirmationTitle => 'Đặt lại tất cả các giá trị?';

  @override
  String get settingsResetConfirmationBody =>
      'Tất cả các thiết lập sẽ trở về trạng thái ban đầu nếu bạn tiếp tục.';

  @override
  String get shuffle => 'Xáo trộn';

  @override
  String get cheat => 'Gian lận';

  @override
  String get back => 'Quay lại';

  @override
  String get apply => 'Áp dụng';

  @override
  String get color => 'Màu sắc';

  @override
  String get theme => 'Giao diện';

  @override
  String get music => 'Âm nhạc';

  @override
  String get effects => 'Hiệu ứng';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get statistics => 'Thống kê';

  @override
  String get about => 'Giới thiệu';

  @override
  String get help => 'Trợ giúp';

  @override
  String get picture => 'Hình ảnh';

  @override
  String get username => 'Tên người dùng';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves nước đi',
      one: 'chỉ 1 nước đi',
      zero: 'không có nước đi',
    );
    return 'Bạn đã chiến thắng với $_temp0!';
  }

  @override
  String get share => 'Chia sẻ';

  @override
  String get shareTitle => 'Thành công mới nhất của tôi trong Cubik!';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves nước đi',
      one: 'chỉ 1 nước đi',
      zero: 'không có nước đi',
    );
    return 'Tôi vừa thắng trò chơi Cubik với $_temp0! Xem liệu bạn có thể làm tốt hơn tại cubik.dy0gu.com, hoặc sử dụng ứng dụng.';
  }

  @override
  String get helpTitle => 'Học cách chơi Cubik!';

  @override
  String get helpBodyFirst =>
      'Mục tiêu rất đơn giản, bạn cần sắp xếp các mảnh vào vị trí của chúng, từ trên cùng bên trái đến dưới cùng bên phải.';

  @override
  String get helpBodySecond =>
      'Di chuyển các mảnh bằng cách sử dụng không gian trống. Khi một mảnh ở vị trí đúng, nó sẽ hiển thị một màu viền mới.';

  @override
  String get pageNotFound =>
      'Chúng tôi không thể tìm thấy trang này, có lẽ bạn không nên ở đây...';

  @override
  String get pageError =>
      'Có lỗi xảy ra khi tải trang này, vui lòng thử lại sau!';

  @override
  String get localDataWarning =>
      'Tất cả dữ liệu ứng dụng được lưu trữ cục bộ, chuyển đổi thiết bị hoặc xóa bộ nhớ cache ứng dụng sẽ xóa nó!';

  @override
  String get statisticMovesTaken => 'Số nước đi trung bình mỗi trò chơi';

  @override
  String get statisticGamesPlayed => 'Số trò chơi chơi mỗi ngày';

  @override
  String get statisticBoardSizesPlayed =>
      'Kích thước bảng trung bình mỗi trò chơi';

  @override
  String get seedCopied => 'Hạt đã được sao chép vào clipboard!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon trò chơi nữa',
      one: '1 trò chơi nữa',
    );
    return 'Chiến thắng $_temp0 để xem lịch sử chiến thắng của bạn!';
  }

  @override
  String get increase => 'Tăng';

  @override
  String get decrease => 'Giảm';

  @override
  String get helpBodyThird =>
      'Bạn cũng có thể sử dụng nút xáo trộn để ngẫu nhiên hóa bảng, hoặc các nút tăng/giảm để thay đổi kích thước của nó.';

  @override
  String get helpBodyFourth =>
      'Trong hồ sơ của bạn, bạn sẽ tìm thấy biểu đồ về lịch sử chiến thắng của bạn. Bạn có thể nhấn vào mỗi nút để biết thêm chi tiết về trò chơi cụ thể đó.';

  @override
  String get date => 'Ngày';

  @override
  String get time => 'Thời gian';

  @override
  String get moves => 'Nước đi';

  @override
  String get size => 'Kích thước';

  @override
  String get board => 'Bảng';
}
