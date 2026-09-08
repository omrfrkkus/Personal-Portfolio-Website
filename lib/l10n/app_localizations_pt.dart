// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get about => 'Sobre mim';

  @override
  String get projects => 'Projetos';

  @override
  String get sports => 'Esportes';

  @override
  String get championship =>
      'Campeonato Mundial de Streetlifting ISF 2023\nMedalhista de Prata (Masculino -125kg)';

  @override
  String get contact => 'Contato';

  @override
  String get hey => 'OLÁ, EU SOU';

  @override
  String get resume => 'Ver Currículo';

  @override
  String get click_more => 'Ver Detalhes';

  @override
  String get close => 'Fechar';

  @override
  String get all_rights =>
      'Todos os direitos reservados. Desenvolvido com Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Um aplicativo de calistenia e fitness desenvolvido de forma independente com Flutter. Demonstra o domínio completo do ciclo do produto, com arquitetura escalável e multilíngue (i18n), animações fluidas e personalizadas de UI/UX e um banco de dados local robusto. Lançado e mantido com sucesso no Google Play.',
        'adam':
            'Um robô humanoide construído sob medida que demonstra a IA Corporificada (Embodied AI). Apresenta um pipeline de edge-computing de baixa latência em C++ e Python que sincroniza perfeitamente LLMs em nuvem, memória RAG localizada e fusão de sensores com mais de 20 servomotores via rede UDP.',
        'johnny':
            'Um robô humanoide impulsionado por IA com ênfase na integração nuvem-hardware. Foi desenvolvido um pipeline robusto de comunicação UART entre Python e Arduino para sincronizar com precisão as respostas de conversação do Google Vertex AI e TTS com gestos eletromecânicos em tempo real.',
        'pencil':
            'Um jogo de plataforma 2D multiplataforma desenvolvido no Godot Engine. Projetado inteiramente do zero, com pixel art customizado, física cinemática sob medida e uma arquitetura otimizada de máquina de estados para uma jogabilidade fluida em várias plataformas.',
        'speaker':
            'Sistemas acústicos avançados impressos em 3D projetados do zero. Combina difusores acústicos geométricos modelados em CAD, ajuste preciso de DSP via ACPWorkbench e gerenciamento de energia BMS integrado para oferecer um desempenho de áudio de alta fidelidade e alta excursão.',
        'other': 'Descrição do projeto não disponível.',
      },
    );
    return '$_temp0';
  }
}
