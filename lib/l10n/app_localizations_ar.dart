// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get comingSoon => 'قريبًا...';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get ok => 'حسنًا';

  @override
  String get gotIt => 'فهمت';

  @override
  String get nice => 'رائع';

  @override
  String get congratulations => 'تهانينا!';

  @override
  String get cancel => 'إلغاء';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get system => 'النظام';

  @override
  String get light => 'فاتح';

  @override
  String get dark => 'داكن';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get monday => 'الاثنين';

  @override
  String get tuesday => 'الثلاثاء';

  @override
  String get wednesday => 'الأربعاء';

  @override
  String get thursday => 'الخميس';

  @override
  String get friday => 'الجمعة';

  @override
  String get saturday => 'السبت';

  @override
  String get sunday => 'الأحد';

  @override
  String get mondayShort => 'الاثنين';

  @override
  String get tuesdayShort => 'الثلاثاء';

  @override
  String get wednesdayShort => 'الأربعاء';

  @override
  String get thursdayShort => 'الخميس';

  @override
  String get fridayShort => 'الجمعة';

  @override
  String get saturdayShort => 'السبت';

  @override
  String get sundayShort => 'الأحد';

  @override
  String get settingsResetConfirmationTitle => 'هل تريد إعادة تعيين كل القيم؟';

  @override
  String get settingsResetConfirmationBody =>
      'سيتم إرجاع كل الإعدادات إلى حالتها الأولية إذا قمت بالمتابعة.';

  @override
  String get shuffle => 'اختزال';

  @override
  String get cheat => 'غش';

  @override
  String get back => 'عودة';

  @override
  String get apply => 'تطبيق';

  @override
  String get color => 'لون';

  @override
  String get theme => 'السمة';

  @override
  String get music => 'الموسيقى';

  @override
  String get effects => 'التأثيرات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get statistics => 'الإحصائيات';

  @override
  String get about => 'حول';

  @override
  String get help => 'مساعدة';

  @override
  String get picture => 'الصورة';

  @override
  String get username => 'اسم المستخدم';

  @override
  String winPopup(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves حركات',
      one: 'حركة واحدة فقط',
      zero: 'لا يوجد حركات',
    );
    return 'فزت باستخدام $_temp0!';
  }

  @override
  String get share => 'مشاركة';

  @override
  String get shareTitle => 'اختياري';

  @override
  String shareBody(num moves) {
    String _temp0 = intl.Intl.pluralLogic(
      moves,
      locale: localeName,
      other: '$moves حركات',
      one: 'حركة واحدة فقط',
      zero: 'لا يوجد حركات',
    );
    return 'لقد فزت للتو بلعبة Cubik باستخدام $_temp0! انظر إذا كنت تستطيع القيام بذلك بشكل أفضل على cubik.win ، أو باستخدام التطبيق.';
  }

  @override
  String get helpTitle => 'تعلم كيفية لعب Cubik!';

  @override
  String get helpBodyFirst =>
      'الهدف بسيط ، تحتاج إلى فرز القطع في موضعها المرتب ، من اليسار إلى اليمين ومن الأعلى إلى الأسفل.';

  @override
  String get helpBodySecond =>
      'قم بتحريك القطع باستخدام المساحة الفارغة. عندما تكون القطعة في الموضع الصحيح ، ستظهر لها لون حافة جديد.';

  @override
  String get pageNotFound =>
      'لم نتمكن من العثور على هذه الصفحة ، ربما لا ينبغي عليك أن تكون هنا...';

  @override
  String get pageError =>
      'حدث خطأ أثناء تحميل هذه الصفحة ، يرجى المحاولة مرة أخرى لاحقًا!';

  @override
  String get localDataWarning =>
      'يتم تخزين جميع بيانات التطبيق محليًا ، وسيؤدي تغيير الأجهزة أو مسح ذاكرة التخزين المؤقت للتطبيق إلى حذفها!';

  @override
  String get statisticMovesTaken => 'الحركات المأخوذة لكل لعبة';

  @override
  String get statisticGamesPlayed => 'الألعاب التي تم لعبها في اليوم';

  @override
  String get statisticBoardSizesPlayed => 'حجم اللوحة لكل لعبة';

  @override
  String get seedCopied => 'تم نسخ البذرة إلى الحافظة!';

  @override
  String notEnoughStatisticDataYet(num gamesWon) {
    String _temp0 = intl.Intl.pluralLogic(
      gamesWon,
      locale: localeName,
      other: '$gamesWon لعبات إضافية',
      one: 'لعبة إضافية',
    );
    return 'قم بربح $_temp0 لرؤية سجل انتصاراتك!';
  }

  @override
  String get increase => 'زيادة';

  @override
  String get decrease => 'تقليل';

  @override
  String get helpBodyThird =>
      'يمكنك أيضًا استخدام زر الخلط لتعشيش اللوحة، أو أزرار الزيادة/التقليل لتغيير حجمها.';

  @override
  String get helpBodyFourth =>
      'في ملف التعريف الخاص بك، ستجد رسم بياني لتاريخ انتصاراتك. يمكنك النقر فوق كل عقدة للحصول على مزيد من التفاصيل حول تلك اللعبة المحددة.';

  @override
  String get date => 'تاريخ';

  @override
  String get time => 'زمن';

  @override
  String get moves => 'حركات';

  @override
  String get size => 'حجم';

  @override
  String get board => 'لوحة اللعب';
}
