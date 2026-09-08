// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get about => 'Sobre mí';

  @override
  String get projects => 'Proyectos';

  @override
  String get sports => 'Deportes';

  @override
  String get championship =>
      'Campeonato Mundial de Streetlifting ISF 2023\nMedallista de Plata (Hombres -125kg)';

  @override
  String get contact => 'Contacto';

  @override
  String get hey => 'HOLA, SOY';

  @override
  String get resume => 'Ver Currículum';

  @override
  String get click_more => 'Ver Detalles';

  @override
  String get close => 'Cerrar';

  @override
  String get all_rights =>
      'Todos los derechos reservados. Desarrollado con Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Una aplicación de fitness y calistenia desarrollada en solitario con Flutter. Muestra la propiedad del ciclo completo del producto, con una arquitectura escalable en múltiples idiomas (i18n), animaciones fluidas y personalizadas de UI/UX, y una sólida base de datos local. Implementada y mantenida con éxito en Google Play.',
        'adam':
            'Un robot humanoide diseñado a medida que demuestra la IA incorporada (Embodied AI). Cuenta con una canalización de edge-computing de baja latencia en C++ y Python que sincroniza a la perfección LLMs en la nube, memoria RAG localizada y fusión de sensores con más de 20 servomotores a través de redes UDP.',
        'johnny':
            'Un robot humanoide impulsado por IA que enfatiza la integración de la nube con el hardware. Se desarrolló una sólida canalización de comunicación UART entre Python y Arduino para sincronizar con precisión las respuestas conversacionales de Google Vertex AI y TTS con gestos electromecánicos en tiempo real.',
        'pencil':
            'Un juego de plataformas 2D multiplataforma desarrollado en Godot Engine. Diseñado completamente desde cero, con pixel art personalizado, física cinemática a medida y una arquitectura de máquina de estados optimizada para un juego fluido en múltiples plataformas.',
        'speaker':
            'Sistemas acústicos avanzados impresos en 3D diseñados desde cero. Combina difusores acústicos geométricos modelados en CAD, ajuste preciso de DSP a través de ACPWorkbench y gestión de energía BMS integrada para ofrecer un rendimiento de audio de alta fidelidad y gran excursión.',
        'other': 'Descripción del proyecto no disponible.',
      },
    );
    return '$_temp0';
  }
}
