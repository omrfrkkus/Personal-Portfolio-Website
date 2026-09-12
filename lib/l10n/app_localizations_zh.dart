// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get about_me_text =>
      '我是一名全栈软件工程师，热衷于构建强大的端到端产品。凭借在人工智能和跨平台开发领域的坚实基础，我能迅速适应新技术以解决复杂问题。从部署可扩展的移动应用程序和交互式 2D 游戏，到开发人工智能驱动的机器人技术和嵌入式硬件，我利用多样化的技术栈（Python、C++、Flutter、Godot）将宏伟的构想转化为实用的现实。';

  @override
  String get about => '关于我';

  @override
  String get about_me => '关于我';

  @override
  String get projects => '项目';

  @override
  String get sports => '体育';

  @override
  String get championship => '2023年ISF街头力量举世界锦标赛\n银牌得主（男子-125公斤级）';

  @override
  String get contact => '联系方式';

  @override
  String get hey => '你好，我是';

  @override
  String get resume => '查看简历';

  @override
  String get click_more => '查看详情';

  @override
  String get close => '关闭';

  @override
  String get all_rights => '版权所有。使用 Flutter 开发。';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            '一款使用 Flutter 独立开发的街头健身应用。展示了全周期的产品所有权，具有可扩展的多语言架构 (i18n)、流畅的自定义 UI/UX 动画以及强大的本地数据库。已在 Google Play 成功发布并持续维护。',
        'adam':
            '一个展示具身智能 (Embodied AI) 的定制人形机器人。配备基于 C++ 和 Python 的低延迟边缘计算流水线，通过 UDP 网络将云端大语言模型 (LLM)、本地 RAG 记忆和传感器融合技术与 20 多个伺服电机无缝同步。',
        'johnny':
            '一个强调云端到硬件集成的人工智能驱动人形机器人。开发了强大的 Python 到 Arduino UART 通信流水线，准确地将 Google Vertex AI 的对话响应和 TTS（文本转语音）与实时机电手势同步。',
        'pencil':
            '一款在 Godot 引擎中开发的跨平台 2D 平台跳跃游戏。完全从零开始进行工程设计，采用自定义像素美术、定制的运动学物理系统，以及为无缝跨平台游戏体验而优化的状态机架构。',
        'speaker':
            '从零开始设计的高级定制 3D 打印声学系统。结合了 CAD 建模的几何声学扩散器、通过 ACPWorkbench 进行的精确 DSP 调音，以及集成的 BMS 电源管理系统，提供高保真 (High-Fidelity)、大冲程的音频性能。',
        'other': '暂无项目描述。',
      },
    );
    return '$_temp0';
  }
}
