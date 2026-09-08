// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get about => 'Обо мне';

  @override
  String get projects => 'Проекты';

  @override
  String get sports => 'Спорт';

  @override
  String get championship =>
      'Чемпионат мира по стритлифтингу ISF 2023\nСеребряный призер (Мужчины -125 кг)';

  @override
  String get contact => 'Контакты';

  @override
  String get hey => 'ПРИВЕТ, Я';

  @override
  String get resume => 'Посмотреть резюме';

  @override
  String get click_more => 'Посмотреть детали';

  @override
  String get close => 'Закрыть';

  @override
  String get all_rights => 'Все права защищены. Разработано на Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Фитнес-приложение для калистеники, созданное одним разработчиком на Flutter. Демонстрирует полный цикл владения продуктом, масштабируемую мультиязычную архитектуру (i18n), плавные пользовательские анимации UI/UX и надежную локальную базу данных. Успешно развернуто и поддерживается в Google Play.',
        'adam':
            'Специально разработанный гуманоидный робот, демонстрирующий воплощенный искусственный интеллект (Embodied AI). Оснащен конвейером периферийных вычислений (edge-computing) с низкой задержкой на C++ и Python, который плавно синхронизирует облачные LLM, локальную память RAG и слияние датчиков с более чем 20 сервомоторами через сеть UDP.',
        'johnny':
            'Гуманоидный робот на базе ИИ с акцентом на интеграцию облака с оборудованием. Разработан надежный конвейер связи UART от Python к Arduino для точной синхронизации разговорных ответов Google Vertex AI и синтеза речи (TTS) с электромеханическими жестами в реальном времени.',
        'pencil':
            'Кроссплатформенный 2D-платформер, разработанный на движке Godot Engine. Создан полностью с нуля: собственный пиксель-арт, индивидуальная кинематическая физика и оптимизированная архитектура конечного автомата (state machine) для плавного игрового процесса на разных платформах.',
        'speaker':
            'Передовые акустические системы, напечатанные на 3D-принтере и спроектированные с нуля. Сочетает в себе CAD-моделированные геометрические акустические диффузоры, точную настройку DSP через ACPWorkbench и интегрированное управление питанием BMS для обеспечения высокоточного звука с большим ходом диффузора.',
        'other': 'Описание проекта недоступно.',
      },
    );
    return '$_temp0';
  }
}
