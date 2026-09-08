// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get about => 'Over mij';

  @override
  String get projects => 'Projecten';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      '2023 ISF Streetlifting Wereldkampioenschap\nZilveren Medaillewinnaar (Mannen -125kg)';

  @override
  String get contact => 'Contact';

  @override
  String get hey => 'HALLO, IK BEN';

  @override
  String get resume => 'Bekijk CV';

  @override
  String get click_more => 'Bekijk Details';

  @override
  String get close => 'Sluiten';

  @override
  String get all_rights => 'Alle rechten voorbehouden. Ontwikkeld met Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Een calisthenics fitnessapplicatie gebouwd met Flutter door een solo-ontwikkelaar. Toont volledige producteigendomcyclus, met een schaalbare meertalige architectuur (i18n), vloeiende aangepaste UI/UX-animaties en een robuuste lokale database. Succesvol geïmplementeerd en onderhouden op Google Play.',
        'adam':
            'Een op maat ontworpen mensachtige robot die Embodied AI demonstreert. Beschikt over een C++ en Python edge-computing pijplijn met lage latentie die cloud-LLM\'s, gelokaliseerd RAG-geheugen en sensorfusie met meer dan 20 servomotoren naadloos synchroniseert via UDP-netwerken.',
        'johnny':
            'Een door AI aangedreven humanoïde robot met de nadruk op cloud-to-hardware integratie. Een robuuste Python-naar-Arduino UART communicatiepijplijn ontwikkeld om conversationele reacties en TTS van Google Vertex AI nauwkeurig te synchroniseren met elektromechanische gebaren in realtime.',
        'pencil':
            'Een platformonafhankelijke 2D-platformgame ontwikkeld in de Godot Engine. Volledig vanaf nul ontworpen, met aangepaste pixel art, op maat gemaakte kinematische fysica en een geoptimaliseerde state machine-architectuur voor naadloze gameplay op meerdere platforms.',
        'speaker':
            'Geavanceerde, op maat gemaakte 3D-geprinte akoestische systemen, vanaf nul ontworpen. Combineert CAD-gemodelleerde geometrische akoestische diffusers, nauwkeurige DSP-afstemming via ACPWorkbench en geïntegreerd BMS-energiebeheer om high-fidelity audioprestaties met hoge excursie te leveren.',
        'other': 'Projectbeschrijving niet beschikbaar.',
      },
    );
    return '$_temp0';
  }
}
