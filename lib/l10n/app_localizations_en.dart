// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get about_me_text =>
      'I am a versatile software engineer passionate about building robust, end-to-end products. With a strong foundation in Artificial Intelligence and multi-platform development, I adapt quickly to new technologies to solve complex problems. From deploying scalable mobile applications and interactive 2D games to engineering AI-driven robotics and embedded hardware, I leverage a diverse tech stack (Python, C++, Flutter, Godot) to turn ambitious concepts into functional realities.';

  @override
  String get about => 'About';

  @override
  String get about_me => 'About Me';

  @override
  String get projects => 'Projects';

  @override
  String get sports => 'Athletics';

  @override
  String get championship =>
      '2023 ISF Streetlifting World Championship\nSilver Medalist (Men\'s -125kg)';

  @override
  String get contact => 'Contact';

  @override
  String get hey => 'HELLO, I\'M';

  @override
  String get resume => 'View Resume';

  @override
  String get click_more => 'View Details';

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
            'A solo-engineered calisthenics fitness application built with Flutter. Showcases full-cycle product ownership, featuring a scalable multi-language architecture (i18n), custom fluid UI/UX animations, and a robust local database. Successfully deployed and maintained on Google Play.',
        'adam':
            'A custom-engineered humanoid robot demonstrating Embodied AI. Features a low-latency C++ and Python edge-computing pipeline that seamlessly synchronizes cloud LLMs, localized RAG memory, and sensor fusion with over 20 servo motors via UDP networking.',
        'johnny':
            'An AI-driven humanoid robot emphasizing cloud-to-hardware integration. Developed a robust Python-to-Arduino UART communication pipeline to accurately synchronize Google Vertex AI conversational responses and TTS with real-time electromechanical gestures.',
        'pencil':
            'A cross-platform 2D platformer developed in the Godot Engine. Engineered entirely from scratch, featuring custom pixel art, bespoke kinematic physics, and an optimized state machine architecture for seamless multi-platform gameplay.',
        'speaker':
            'Advanced custom 3D-printed acoustic systems engineered from scratch. Combines CAD-modeled geometric acoustic diffusers, precise DSP tuning via ACPWorkbench, and integrated BMS power management to deliver high-fidelity, high-excursion audio performance.',
        'other': 'Project description not available.',
      },
    );
    return '$_temp0';
  }
}
