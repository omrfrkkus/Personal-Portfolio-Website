// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get about => 'O projekcie';

  @override
  String get projects => 'Projekty';

  @override
  String get sports => 'Sport';

  @override
  String get contact => 'Kontakt';

  @override
  String get hey => 'CZEŚĆ, JESTEM';

  @override
  String get resume => 'CV';

  @override
  String get click_more => 'Kliknij, aby uzyskać więcej informacji';

  @override
  String get close => 'Zamknij';

  @override
  String get all_rights => 'Wszystkie prawa zastrzeżone. Opracowane z Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Używając Fluttera, opracowałem i opublikowałem aplikację Street Workout z obsługą wielu języków, profesjonalnymi bazami danych treningowych i animacjami. Aplikacja ma ponad tysiąc pobrań w Google Play Store.',
        'adam':
            'Opracowałem humanoidalną AI przy użyciu Pythona i Google Vertex AI. Robot integruje komponenty sprzętowe, takie jak serwomotory i Arduino, do kontrolowania ruchu. Dodatkowo przeprowadziłem dostosowywanie różnych modeli AI, w tym zarówno modeli opartych na chmurze, jak i offline, aby poprawić jego zdolności w zakresie rozpoznawania mowy, obiektów i twarzy.',
        'johnny':
            'Opracowałem humanoidalną AI przy użyciu Pythona i Google Vertex AI, integrując serwomotory i Arduino do ruchu. Dostosowane modele AI dla lepszego rozpoznawania mowy, obiektów i twarzy.',
        'pencil':
            'Gra platformowa 2D na wiele platform, opracowana przy użyciu Godot.',
        'other': 'Opis projektu niedostępny.',
      },
    );
    return '$_temp0';
  }
}
