// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get about_me_text =>
      'Ich bin Softwareentwickler mit Schwerpunkt auf Robotik, künstlicher Intelligenz und durchdachten digitalen Erlebnissen.';

  @override
  String get about => 'Über mich';

  @override
  String get about_me => 'Über mich';

  @override
  String get projects => 'Projekte';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      'ISF Streetlifting Weltmeisterschaft 2023\nSilbermedaillengewinner (Männer -125kg)';

  @override
  String get contact => 'Kontakt';

  @override
  String get hey => 'HALLO, ICH BIN';

  @override
  String get resume => 'Lebenslauf ansehen';

  @override
  String get click_more => 'Details ansehen';

  @override
  String get close => 'Schließen';

  @override
  String get all_rights => 'Alle Rechte vorbehalten. Entwickelt mit Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Eine von einem einzigen Entwickler mit Flutter erstellte Calisthenics-Fitnessanwendung. Zeigt den vollständigen Produktlebenszyklus und verfügt über eine skalierbare mehrsprachige Architektur (i18n), flüssige benutzerdefinierte UI/UX-Animationen und eine robuste lokale Datenbank. Erfolgreich auf Google Play veröffentlicht und gewartet.',
        'adam':
            'Ein maßgeschneiderter humanoider Roboter, der Embodied AI demonstriert. Verfügt über eine latenzarme Edge-Computing-Pipeline in C++ und Python, die nahtlos Cloud-LLMs, lokalisierte RAG-Speicher und Sensorfusion mit über 20 Servomotoren über UDP-Netzwerke synchronisiert.',
        'johnny':
            'Ein KI-gesteuerter humanoider Roboter mit Schwerpunkt auf Cloud-to-Hardware-Integration. Entwicklung einer robusten Python-zu-Arduino-UART-Kommunikationspipeline zur präzisen Synchronisierung konversationeller Google Vertex AI-Antworten und TTS mit elektromechanischen Gesten in Echtzeit.',
        'pencil':
            'Ein plattformübergreifender 2D-Platformer, der in der Godot Engine entwickelt wurde. Komplett von Grund auf neu entwickelt, mit benutzerdefinierter Pixelkunst, maßgeschneiderter kinematischer Physik und einer optimierten Zustandsmaschinenarchitektur für nahtloses Multiplattform-Gameplay.',
        'speaker':
            'Fortschrittliche, maßgeschneiderte 3D-gedruckte Akustiksysteme, die von Grund auf neu entwickelt wurden. Kombiniert CAD-modellierte geometrische Akustikdiffusoren, präzises DSP-Tuning über ACPWorkbench und integriertes BMS-Energiemanagement, um eine Audioleistung mit hoher Klangtreue (High-Fidelity) und hoher Auslenkung zu liefern.',
        'other': 'Projektbeschreibung nicht verfügbar.',
      },
    );
    return '$_temp0';
  }
}
