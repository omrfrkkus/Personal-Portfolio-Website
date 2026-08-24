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
            'Using Flutter, I developed and published a Street Workout app with multi-language support, professional training databases, and animations. The app has over a thousand downloads on Google Play Store.',
        'adam':
            'I developed a humanoid AI using Python and Google Vertex AI. The robot integrates hardware components such as servo motors and Arduino for movement control. Additionally, I performed fine-tuning on various AI models, including both cloud-based and offline models, to enhance its speech, object, and face recognition capabilities.',
        'johnny':
            'I developed a humanoid AI using Python and Google Vertex AI, integrating servo motors and Arduino for movement. Fine-tuned AI models for improved speech, object, and face recognition.',
        'pencil': 'A 2D multiplatform platformer game developed using Godot.',
        'other': 'Project description not available.',
      },
    );
    return '$_temp0';
  }
}
