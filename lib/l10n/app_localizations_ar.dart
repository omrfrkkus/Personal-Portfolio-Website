// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get about => 'نبذة عني';

  @override
  String get projects => 'المشاريع';

  @override
  String get sports => 'الرياضة';

  @override
  String get championship =>
      'بطولة العالم لرفع الأثقال في الشوارع ISF 2023\nحائز على الميدالية الفضية (رجال -125 كجم)';

  @override
  String get contact => 'تواصل معي';

  @override
  String get hey => 'مرحباً، أنا';

  @override
  String get resume => 'عرض السيرة الذاتية';

  @override
  String get click_more => 'عرض التفاصيل';

  @override
  String get close => 'إغلاق';

  @override
  String get all_rights => 'جميع الحقوق محفوظة. تم التطوير باستخدام Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'تطبيق لياقة بدنية لرياضة الكاليسثنكس مطور فردياً باستخدام Flutter. يُظهر ملكية دورة حياة المنتج بالكامل، ويتميز ببنية قابلة للتطوير متعددة اللغات (i18n)، ورسوم متحركة مخصصة وسلسة لواجهة وتجربة المستخدم (UI/UX)، وقاعدة بيانات محلية قوية. تم إصداره وصيانته بنجاح على Google Play.',
        'adam':
            'روبوت بشري مُصمم خصيصاً لاستعراض الذكاء الاصطناعي المتجسد (Embodied AI). يتميز بمسار حوسبة طرفية (edge-computing) بزمن انتقال منخفض مبرمج بـ C++ و Python، يزامن بشكل سلس النماذج اللغوية الضخمة السحابية (LLMs)، وذاكرة RAG المحلية، ودمج المستشعرات مع أكثر من 20 محرك سيرفو عبر شبكة UDP.',
        'johnny':
            'روبوت بشري يعمل بالذكاء الاصطناعي يركز على دمج السحابة بالأجهزة (cloud-to-hardware). تم تطوير مسار اتصال UART قوي من Python إلى Arduino لمزامنة الردود الحوارية وتحويل النص إلى كلام (TTS) من Google Vertex AI مع الإيماءات الكهروميكانيكية في الوقت الفعلي بدقة.',
        'pencil':
            'لعبة منصات ثنائية الأبعاد (2D platformer) متعددة الأنظمة تم تطويرها في محرك Godot. تم تصميمها وهندستها بالكامل من الصفر، وتتميز برسوم بكسل مخصصة، وفيزياء كينماتيكية خاصة، وبنية آلة حالة (state machine) محسنة لتجربة لعب سلسة عبر منصات متعددة.',
        'speaker':
            'أنظمة صوتية متقدمة مطبوعة ثلاثية الأبعاد (3D) ومصممة من الصفر. تجمع بين مشتتات صوتية هندسية مصممة بنظام CAD، وضبط دقيق لنظام DSP عبر ACPWorkbench، وإدارة طاقة BMS مدمجة لتقديم أداء صوتي عالي الدقة (high-fidelity) وعالي الانحراف.',
        'other': 'وصف المشروع غير متوفر.',
      },
    );
    return '$_temp0';
  }
}
