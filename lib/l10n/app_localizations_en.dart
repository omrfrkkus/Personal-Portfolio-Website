// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get about => 'About';

  @override
  String get projects => 'Projects';

  @override
  String get sports => 'Sports';

  @override
  String get contact => 'Contact';

  @override
  String get hey => 'HEY, I\'M';

  @override
  String get resume => 'Resume';

  @override
  String get click_more => 'Click for more';

  @override
  String get close => 'Close';

  @override
  String get all_rights => 'All rights reserved. Developed with Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'A comprehensive fitness application solo-developed using Flutter. Features a scalable multi-language architecture, custom UI/UX animations, and robust local databases for professional training regimens. Currently live on Google Play with over 1,000 downloads.',
        'adam':
            'An advanced, custom-built humanoid robot demonstrating Embodied AI. Engineered a low-latency C++/Python edge-computing architecture to synchronize cloud LLMs (Gemini/Ollama) and localized RAG memory with 20+ servo motors via UDP networking.',
        'johnny':
            'An AI-driven humanoid robot built on the INMOOV platform. Developed a Python-to-Arduino UART pipeline to seamlessly synchronize Google Vertex AI conversational responses and text-to-speech outputs with real-time physical gestures.',
        'pencil':
            'A multi-platform 2D platformer built in the Godot Engine for an upcoming commercial release. Developed entirely solo, featuring 100% custom pixel art, custom kinematic physics, and optimized state management.',
        'speaker':
            'Engineered a custom Bluetooth acoustic speaker from scratch. Combined 3D CAD modeling, precise internal volume calculations (1L), and Digital Signal Processing (DSP) to deliver high-fidelity audio through dual drivers and a tweeter.',
        'other': 'Project description not available.',
      },
    );
    return '$_temp0';
  }
}
