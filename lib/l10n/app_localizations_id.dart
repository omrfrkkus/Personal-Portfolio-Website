// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get about_me_text =>
      'Saya adalah insinyur perangkat lunak yang berfokus pada robotika, kecerdasan buatan, dan pengalaman digital yang bermakna.';

  @override
  String get about => 'Tentang';

  @override
  String get about_me => 'Tentang Saya';

  @override
  String get projects => 'Proyek';

  @override
  String get sports => 'Olahraga';

  @override
  String get championship =>
      'Kejuaraan Dunia Streetlifting ISF 2023\nPeraih Medali Perak (Pria -125kg)';

  @override
  String get contact => 'Kontak';

  @override
  String get hey => 'HALO, SAYA';

  @override
  String get resume => 'Lihat Resume';

  @override
  String get click_more => 'Lihat Detail';

  @override
  String get close => 'Tutup';

  @override
  String get all_rights => 'Hak cipta dilindungi. Dikembangkan dengan Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Aplikasi kebugaran kalistenik yang dikembangkan secara solo menggunakan Flutter. Menampilkan kepemilikan produk siklus penuh, menampilkan arsitektur multi-bahasa yang dapat diskalakan (i18n), animasi UI/UX kustom yang mulus, dan basis data lokal yang kuat. Berhasil diterapkan dan dikelola di Google Play.',
        'adam':
            'Robot humanoid rekayasa khusus yang mendemonstrasikan AI Berwujud (Embodied AI). Menampilkan alur edge-computing latensi rendah dalam C++ dan Python yang secara mulus menyinkronkan LLM cloud, memori RAG yang dilokalkan, dan fusi sensor dengan lebih dari 20 motor servo melalui jaringan UDP.',
        'johnny':
            'Robot humanoid berbasis AI yang menekankan integrasi cloud-ke-perangkat keras. Mengembangkan alur komunikasi UART Python-ke-Arduino yang kuat untuk menyinkronkan secara akurat respons percakapan Google Vertex AI dan TTS dengan gerakan elektromekanis secara real-time.',
        'pencil':
            'Gim platformer 2D lintas platform yang dikembangkan menggunakan Godot Engine. Direkayasa sepenuhnya dari nol, menampilkan seni piksel kustom, fisika kinematik yang dibuat khusus, dan arsitektur state machine yang dioptimalkan untuk gameplay multi-platform yang mulus.',
        'speaker':
            'Sistem akustik cetak 3D kustom tingkat lanjut yang direkayasa dari nol. Menggabungkan difuser akustik geometris dengan pemodelan CAD, penyetelan DSP yang presisi melalui ACPWorkbench, dan manajemen daya BMS terintegrasi untuk memberikan kinerja audio dengan fidelitas tinggi (high-fidelity) dan ekskursi tinggi.',
        'other': 'Deskripsi proyek tidak tersedia.',
      },
    );
    return '$_temp0';
  }
}
