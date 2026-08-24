// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get about => 'Hakkında';

  @override
  String get projects => 'Projeler';

  @override
  String get sports => 'Spor';

  @override
  String get contact => 'İletişim';

  @override
  String get hey => 'MERHABA, BEN';

  @override
  String get resume => 'Özgeçmiş';

  @override
  String get click_more => 'Daha fazla bilgi için tıklayın';

  @override
  String get close => 'Kapat';

  @override
  String get all_rights => 'Tüm hakları saklıdır. Flutter ile geliştirildi.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Flutter kullanarak, çok dilli destek, profesyonel eğitim veritabanları ve animasyonlarla Street Workout uygulamasını geliştirdim ve yayımladım. Uygulama, Google Play Store\'da binlerce indirme aldı.',
        'adam':
            'Python ve Google Vertex AI kullanarak bir humanoid AI geliştirdim. Robot, hareket kontrolü için servo motorlar ve Arduino gibi donanım bileşenlerini entegre ediyor. Ayrıca, konuşma, nesne ve yüz tanıma yeteneklerini geliştirmek için hem bulut tabanlı hem de çevrimdışı çeşitli AI modellerini ince ayar yaptım.',
        'johnny':
            'Python ve Google Vertex AI kullanarak bir humanoid AI geliştirdim ve hareket için servo motorlar ile Arduino\'yu entegre ettim. Ses, nesne ve yüz tanıma için iyileştirilmiş AI modelleri ayarlandı.',
        'pencil':
            'Godot kullanarak geliştirilen çok platformlu 2D platform oyunu.',
        'other': 'Proje açıklaması mevcut değil.',
      },
    );
    return '$_temp0';
  }
}
