// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get about_me_text =>
      'Robotik, yapay zeka ve özenli dijital deneyimlere odaklanan bir yazılım mühendisiyim.';

  @override
  String get about => 'Hakkımda';

  @override
  String get about_me => 'Hakkımda';

  @override
  String get projects => 'Projeler';

  @override
  String get sports => 'Spor';

  @override
  String get championship =>
      '2023 ISF Streetlifting Dünya Şampiyonası\nGümüş Madalya (Erkekler -125kg)';

  @override
  String get contact => 'İletişim';

  @override
  String get hey => 'MERHABA, BEN';

  @override
  String get resume => 'Özgeçmişi Görüntüle';

  @override
  String get click_more => 'Detayları Gör';

  @override
  String get close => 'Kapat';

  @override
  String get all_rights =>
      'Tüm hakları saklıdır. Flutter ile geliştirilmiştir.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Flutter ile geliştirilen, tek kişi tarafından mühendisliği yapılmış bir kalistenik fitness uygulaması. Ölçeklenebilir çoklu dil mimarisi (i18n), akıcı özel UI/UX animasyonları ve sağlam bir yerel veritabanı ile tam döngü ürün sahipliğini sergiler. Google Play\'de başarıyla yayınlandı ve bakımı yapılmaktadır.',
        'adam':
            'Somutlaştırılmış Yapay Zekayı (Embodied AI) sergileyen özel mühendislik ürünü bir insansı robot. Bulut tabanlı LLM\'leri, yerel RAG belleğini ve sensör füzyonunu UDP ağı üzerinden 20\'den fazla servo motorla sorunsuz bir şekilde senkronize eden düşük gecikmeli C++ ve Python uç bilişim (edge-computing) işlem hattına sahiptir.',
        'johnny':
            'Buluttan donanıma entegrasyonu vurgulayan yapay zeka destekli bir insansı robot. Google Vertex AI sohbet yanıtlarını ve TTS\'yi gerçek zamanlı elektromekanik hareketlerle doğru bir şekilde senkronize etmek için sağlam bir Python-Arduino UART iletişim hattı geliştirildi.',
        'pencil':
            'Godot Engine\'de geliştirilen çapraz platform 2D platform oyunu. Kesintisiz çoklu platform oynanışı için özel piksel çizimler, özel kinematik fizik ve optimize edilmiş durum makinesi (state machine) mimarisi ile tamamen sıfırdan tasarlandı.',
        'speaker':
            'Sıfırdan tasarlanan gelişmiş, özel 3D baskı akustik sistemler. Yüksek aslına uygun (high-fidelity) ve yüksek sapmalı ses performansı sunmak için CAD ile modellenmiş geometrik akustik difüzörleri, ACPWorkbench ile hassas DSP ayarını ve entegre BMS güç yönetimini birleştirir.',
        'other': 'Proje açıklaması bulunmuyor.',
      },
    );
    return '$_temp0';
  }
}
