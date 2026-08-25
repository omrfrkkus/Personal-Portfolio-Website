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
  String get championship =>
      'Streetlifting Dünya Şampiyonası 2023\nErkekler -125 kg Kategorisi 2.\'si';

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
            'Flutter kullanılarak tek başıma geliştirilen kapsamlı bir fitness uygulaması. Ölçeklenebilir çok dilli mimari, özel UI/UX animasyonları ve profesyonel antrenman programları için güçlü yerel veritabanları içerir. Şu anda Google Play\'de 1.000\'den fazla indirmeye sahip.',
        'adam':
            'Embodied AI (Somutlaştırılmış Yapay Zeka) konseptini sergileyen, sıfırdan üretilmiş gelişmiş bir insansı robot. Bulut tabanlı LLM\'leri (Gemini/Ollama) ve yerelleştirilmiş RAG belleğini UDP ağı üzerinden 20\'den fazla servo motorla senkronize etmek için düşük gecikmeli C++/Python edge-computing mimarisi tasarlandı.',
        'johnny':
            'INMOOV platformu üzerine inşa edilmiş, yapay zeka destekli bir insansı robot. Google Vertex AI konversasyonel yanıtlarını ve metinden sese (TTS) çıktılarını gerçek zamanlı fiziksel jestlerle sorunsuz bir şekilde senkronize etmek için Python\'dan Arduino\'ya bir UART haberleşme hattı geliştirildi.',
        'pencil':
            'Ticari sürüme hazırlanan, Godot Engine ile geliştirilmiş çok platformlu bir 2D platform oyunu. %100 özgün piksel sanatı, özel kinematik fizik ve optimize edilmiş durum yönetimi (state management) ile tamamen tek başıma geliştirildi.',
        'speaker':
            'Sıfırdan özel bir Bluetooth akustik hoparlör tasarlandı ve üretildi. Çift sürücü ve bir tweeter aracılığıyla yüksek sadakatli (Hi-Fi) ses sunmak için 3D CAD modelleme, hassas iç hacim hesaplamaları (1L) ve Dijital Sinyal İşleme (DSP) bir araya getirildi.',
        'other': 'Proje açıklaması mevcut değil.',
      },
    );
    return '$_temp0';
  }
}
