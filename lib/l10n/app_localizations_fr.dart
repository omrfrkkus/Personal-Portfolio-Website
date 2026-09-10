// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get about_me_text =>
      'Je suis ingénieur logiciel spécialisé en robotique, intelligence artificielle et expériences numériques réfléchies.';

  @override
  String get about => 'À propos';

  @override
  String get about_me => 'À propos de moi';

  @override
  String get projects => 'Projets';

  @override
  String get sports => 'Sports';

  @override
  String get championship =>
      'Championnat du Monde ISF de Streetlifting 2023\nMédaillé d\'Argent (Hommes -125kg)';

  @override
  String get contact => 'Contact';

  @override
  String get hey => 'BONJOUR, JE SUIS';

  @override
  String get resume => 'Voir le CV';

  @override
  String get click_more => 'Voir les Détails';

  @override
  String get close => 'Fermer';

  @override
  String get all_rights => 'Tous droits réservés. Développé avec Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Une application de fitness et de calisthénie développée en solo avec Flutter. Démontre la gestion complète du cycle de vie du produit, avec une architecture multilingue évolutive (i18n), des animations UI/UX fluides et personnalisées, et une base de données locale robuste. Déployée et maintenue avec succès sur Google Play.',
        'adam':
            'Un robot humanoïde conçu sur mesure démontrant l\'IA Incarnée (Embodied AI). Dispose d\'un pipeline d\'edge-computing à faible latence en C++ et Python qui synchronise de manière transparente les LLM cloud, la mémoire RAG localisée et la fusion de capteurs avec plus de 20 servomoteurs via un réseau UDP.',
        'johnny':
            'Un robot humanoïde propulsé par l\'IA mettant l\'accent sur l\'intégration cloud-matériel. Développement d\'un pipeline de communication UART robuste entre Python et Arduino pour synchroniser avec précision les réponses conversationnelles de Google Vertex AI et le TTS avec des gestes électromécaniques en temps réel.',
        'pencil':
            'Un jeu de plateforme 2D multiplateforme développé sur le moteur Godot. Conçu entièrement de zéro, avec du pixel art personnalisé, une physique cinématique sur mesure et une architecture de machine à états optimisée pour un gameplay fluide sur plusieurs plateformes.',
        'speaker':
            'Systèmes acoustiques avancés imprimés en 3D et conçus de zéro. Combine des diffuseurs acoustiques géométriques modélisés par CAO, un réglage DSP précis via ACPWorkbench et une gestion intégrée de l\'alimentation BMS pour offrir des performances audio haute fidélité à forte excursion.',
        'other': 'Description du projet non disponible.',
      },
    );
    return '$_temp0';
  }
}
