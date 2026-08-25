// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get about => 'O mnie';

  @override
  String get projects => 'Projekty';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      'Mistrzostwa Świata w Streetliftingu 2023\n2. miejsce w kategorii mężczyzn -125 kg';

  @override
  String get contact => 'Kontakt';

  @override
  String get hey => 'CZEŚĆ, JESTEM';

  @override
  String get resume => 'CV';

  @override
  String get click_more => 'Kliknij, aby dowiedzieć się więcej';

  @override
  String get close => 'Zamknij';

  @override
  String get all_rights =>
      'Wszelkie prawa zastrzeżone. Stworzone we Flutterze.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(projects, {
      'gorilla':
          'Kompleksowa aplikacja fitness stworzona samodzielnie przy użyciu technologii Flutter. Zawiera skalowalną architekturę wielojęzyczną, niestandardowe animacje UI/UX oraz solidne lokalne bazy danych dla profesjonalnych planów treningowych. Dostępna w Google Play z ponad 1000 pobrań.',
      'adam':
          'Zaawansowany, autorski robot humanoidalny demonstrujący koncepcję Embodied AI. Zaprojektowałem niskolatencyjną architekturę edge-computing w C++/Python, aby zsynchronizować chmurowe modele LLM (Gemini/Ollama) i lokalną pamięć RAG z ponad 20 serwomotorami poprzez sieć UDP.',
      'johnny':
          'Robot humanoidalny napędzany sztuczną inteligencją, zbudowany na platformie INMOOV. Stworzyłem potok komunikacyjny UART (Python-Arduino), aby płynnie synchronizować konwersacyjne odpowiedzi Google Vertex AI oraz syntezę mowy z fizycznymi gestami w czasie rzeczywistym.',
      'pencil':
          'Wieloplatformowa gra platformowa 2D stworzona w silniku Godot, przygotowywana do komercyjnego wydania. Stworzona w 100% samodzielnie, zawiera autorski pixel art, niestandardową fizykę kinematyczną oraz zoptymalizowane zarządzanie stanem.',
      'speaker':
          'Zaprojektowałem i zbudowałem od podstaw autorski głośnik Bluetooth. Połączyłem modelowanie 3D CAD, precyzyjne obliczenia pojemności wewnętrznej (1L) oraz cyfrowe przetwarzanie sygnału (DSP), aby zapewnić dźwięk wysokiej jakości (high-fidelity) przy użyciu dwóch przetworników i głośnika wysokotonowego.',
      'other': 'Opis projektu niedostępny.',
    });
    return '$_temp0';
  }
}
