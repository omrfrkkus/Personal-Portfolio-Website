// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get about => 'Chi sono';

  @override
  String get projects => 'Progetti';

  @override
  String get sports => 'Sport';

  @override
  String get championship =>
      'Campionato Mondiale ISF di Streetlifting 2023\nMedaglia d\'Argento (Uomini -125kg)';

  @override
  String get contact => 'Contatti';

  @override
  String get hey => 'CIAO, SONO';

  @override
  String get resume => 'Vedi CV';

  @override
  String get click_more => 'Vedi Dettagli';

  @override
  String get close => 'Chiudi';

  @override
  String get all_rights => 'Tutti i diritti riservati. Sviluppato con Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Un\'applicazione fitness per il calisthenics sviluppata in solitaria con Flutter. Dimostra la completa gestione del ciclo di vita del prodotto, con un\'architettura multilingua scalabile (i18n), animazioni UI/UX fluide e personalizzate e un solido database locale. Distribuita e mantenuta con successo su Google Play.',
        'adam':
            'Un robot umanoide ingegnerizzato su misura che dimostra l\'IA Incarnata (Embodied AI). È dotato di una pipeline di edge-computing a bassa latenza in C++ e Python che sincronizza perfettamente LLM in cloud, memoria RAG localizzata e sensor fusion con oltre 20 servomotori tramite rete UDP.',
        'johnny':
            'Un robot umanoide basato sull\'IA che pone l\'accento sull\'integrazione cloud-hardware. È stata sviluppata una solida pipeline di comunicazione UART da Python ad Arduino per sincronizzare con precisione le risposte conversazionali di Google Vertex AI e il TTS con gesti elettromeccanici in tempo reale.',
        'pencil':
            'Un platform 2D multipiattaforma sviluppato nel Godot Engine. Progettato interamente da zero, presenta pixel art personalizzata, fisica cinematica su misura e un\'architettura a macchina a stati ottimizzata per un gameplay fluido su più piattaforme.',
        'speaker':
            'Sistemi acustici avanzati stampati in 3D e progettati da zero. Combina diffusori acustici geometrici modellati al CAD, sintonizzazione DSP precisa tramite ACPWorkbench e gestione dell\'alimentazione BMS integrata per offrire prestazioni audio ad alta fedeltà e ad alta escursione.',
        'other': 'Descrizione del progetto non disponibile.',
      },
    );
    return '$_temp0';
  }
}
