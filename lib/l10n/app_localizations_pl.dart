// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get about_me_text =>
      'Jestem wszechstronnym inżynierem oprogramowania z pasją do tworzenia solidnych, kompleksowych produktów (end-to-end). Posiadając silne fundamenty w dziedzinie sztucznej inteligencji i programowania wieloplatformowego, szybko adaptuję się do nowych technologii, by rozwiązywać złożone problemy. Od wdrażania skalowalnych aplikacji mobilnych i interaktywnych gier 2D po inżynierię robotyki napędzanej przez AI oraz systemów wbudowanych – wykorzystuję różnorodny stos technologiczny (Python, C++, Flutter, Godot), aby przekształcać ambitne koncepcje w działającą rzeczywistość.';

  @override
  String get about => 'O mnie';

  @override
  String get about_me => 'O mnie';

  @override
  String get projects => 'Projekty';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      'Mistrzostwa Świata ISF Streetlifting 2023\nSrebrny Medalista (Mężczyźni -125kg)';

  @override
  String get contact => 'Kontakt';

  @override
  String get hey => 'CZEŚĆ, JESTEM';

  @override
  String get resume => 'Zobacz CV';

  @override
  String get click_more => 'Zobacz Szczegóły';

  @override
  String get close => 'Zamknij';

  @override
  String get all_rights =>
      'Wszelkie prawa zastrzeżone. Stworzone we Flutterze.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Aplikacja fitness do kalisteniki stworzona we Flutterze przez jednego inżyniera. Prezentuje pełny cykl życia produktu, zawiera skalowalną architekturę wielojęzyczną (i18n), płynne, niestandardowe animacje UI/UX oraz solidną lokalną bazę danych. Z sukcesem wdrożona i utrzymywana w Google Play.',
        'adam':
            'Zaprojektowany na zamówienie humanoidalny robot demonstrujący ucieleśnioną sztuczną inteligencję (Embodied AI). Wyposażony w niskolatencyjny potok przetwarzania brzegowego (edge-computing) w C++ i Pythonie, który płynnie synchronizuje chmurowe LLM, zlokalizowaną pamięć RAG i fuzję czujników z ponad 20 serwomotorami za pośrednictwem sieci UDP.',
        'johnny':
            'Humanoidalny robot napędzany sztuczną inteligencją, z naciskiem na integrację chmury ze sprzętem. Opracowano solidny potok komunikacyjny UART na linii Python-Arduino w celu precyzyjnej synchronizacji konwersacyjnych odpowiedzi Google Vertex AI i TTS z elektromechanicznymi gestami w czasie rzeczywistym.',
        'pencil':
            'Wieloplatformowa gra platformowa 2D stworzona w silniku Godot. Zaprojektowana całkowicie od podstaw, oferująca niestandardowy pixel art, dedykowaną fizykę kinematyczną oraz zoptymalizowaną architekturę maszyny stanów dla płynnej rozgrywki na wielu platformach.',
        'speaker':
            'Zaawansowane, niestandardowe systemy akustyczne z druku 3D zaprojektowane od zera. Łączą w sobie modelowane w CAD geometryczne dyfuzory akustyczne, precyzyjne strojenie DSP za pomocą ACPWorkbench oraz zintegrowane zarządzanie zasilaniem BMS, aby zapewnić najwyższej jakości dźwięk o wysokim wychyleniu membrany.',
        'other': 'Opis projektu jest niedostępny.',
      },
    );
    return '$_temp0';
  }
}
