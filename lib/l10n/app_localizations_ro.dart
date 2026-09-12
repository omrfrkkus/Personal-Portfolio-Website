// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get about_me_text =>
      'Sunt un inginer software versatil, pasionat de construirea unor produse robuste de tip end-to-end. Având o bază solidă în Inteligența Artificială și dezvoltarea multi-platformă, mă adaptez rapid la noile tehnologii pentru a rezolva probleme complexe. De la lansarea de aplicații mobile scalabile și jocuri 2D interactive, până la ingineria roboticii bazate pe IA și a hardware-ului încorporat, folosesc un stack tehnologic divers (Python, C++, Flutter, Godot) pentru a transforma concepte ambițioase în realități funcționale.';

  @override
  String get about => 'Despre mine';

  @override
  String get about_me => 'Despre mine';

  @override
  String get projects => 'Proiecte';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      'Campionatul Mondial de Streetlifting ISF 2023\nMedaliat cu Argint (Bărbați -125kg)';

  @override
  String get contact => 'Contact';

  @override
  String get hey => 'SALUT, SUNT';

  @override
  String get resume => 'Vezi CV';

  @override
  String get click_more => 'Vezi Detalii';

  @override
  String get close => 'Închide';

  @override
  String get all_rights => 'Toate drepturile rezervate. Dezvoltat cu Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'O aplicație de fitness pentru calistenie dezvoltată independent (solo-engineered) folosind Flutter. Demonstrează o gestionare completă a ciclului de viață al produsului, având o arhitectură scalabilă în mai multe limbi (i18n), animații UI/UX fluide și personalizate, plus o bază de date locală robustă. Lansată și întreținută cu succes pe Google Play.',
        'adam':
            'Un robot umanoid construit la comandă care demonstrează IA Întrupată (Embodied AI). Prezintă o conductă de procesare edge-computing cu latență redusă în C++ și Python, care sincronizează perfect LLM-urile din cloud, memoria RAG localizată și fuziunea senzorilor cu peste 20 de servomotoare prin rețea UDP.',
        'johnny':
            'Un robot umanoid bazat pe inteligență artificială, punând accent pe integrarea cloud-hardware. A fost dezvoltată o conductă robustă de comunicare UART între Python și Arduino pentru a sincroniza cu precizie răspunsurile conversaționale Google Vertex AI și TTS cu gesturi electromecanice în timp real.',
        'pencil':
            'Un joc de platformă 2D cross-platform dezvoltat în Godot Engine. Proiectat complet de la zero, având pixel art personalizat, fizică cinematică făcută la comandă și o arhitectură optimizată cu mașină de stări (state machine) pentru un gameplay fluid pe multiple platforme.',
        'speaker':
            'Sisteme acustice avansate printate 3D, proiectate de la zero. Combină difuzoare acustice geometrice modelate CAD, o reglare DSP precisă prin ACPWorkbench și o gestionare a energiei BMS integrată, pentru a oferi o performanță audio de înaltă fidelitate (high-fidelity) și o cursă lungă a difuzorului.',
        'other': 'Descrierea proiectului nu este disponibilă.',
      },
    );
    return '$_temp0';
  }
}
