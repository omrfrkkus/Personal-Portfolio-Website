// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get about_me_text => 'ロボティクス、人工知能、そして思慮深いデジタル体験に取り組むソフトウェアエンジニアです。';

  @override
  String get about => '自己紹介';

  @override
  String get about_me => '私について';

  @override
  String get projects => 'プロジェクト';

  @override
  String get sports => 'スポーツ';

  @override
  String get championship => '2023 ISF ストリートリフティング世界選手権\n銀メダリスト (男子 -125kg級)';

  @override
  String get contact => 'お問い合わせ';

  @override
  String get hey => 'こんにちは、私は';

  @override
  String get resume => '履歴書を見る';

  @override
  String get click_more => '詳細を見る';

  @override
  String get close => '閉じる';

  @override
  String get all_rights => '無断転載を禁じます。Flutterで開発されました。';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Flutterを使用して単独で開発されたカリステニクス・フィットネスアプリ。フルサイクルの製品所有権を示し、スケーラブルな多言語アーキテクチャ(i18n)、スムーズなカスタムUI/UXアニメーション、堅牢なローカルデータベースを備えています。Google Playで正常に展開および保守されています。',
        'adam':
            'エンボディドAI（Embodied AI）を実証するカスタム設計のヒューマノイドロボット。クラウドLLM、ローカライズされたRAGメモリ、およびUDPネットワーク経由での20以上のサーボモーターとのセンサーフュージョンをシームレスに同期する、低遅延のC++およびPythonエッジコンピューティングパイプラインを備えています。',
        'johnny':
            'クラウドからハードウェアへの統合に重点を置いたAI駆動のヒューマノイドロボット。Google Vertex AIの会話応答やTTS（音声合成）とリアルタイムの電気機械的ジェスチャーを正確に同期させるための、強力なPythonからArduinoへのUART通信パイプラインを開発しました。',
        'pencil':
            'Godot Engineで開発されたクロスプラットフォームの2Dプラットフォーマーゲーム。独自のピクセルアート、特注のキネマティック物理学、およびシームレスなマルチプラットフォームゲームプレイのための最適化されたステートマシンアーキテクチャを備え、完全にゼロから設計されました。',
        'speaker':
            'ゼロから設計された高度なカスタム3Dプリント音響システム。CADでモデル化された幾何学的音響ディフューザー、ACPWorkbenchによる正確なDSPチューニング、統合されたBMS電源管理を組み合わせて、忠実度の高い高偏位オーディオパフォーマンスを提供します。',
        'other': 'プロジェクトの説明はありません。',
      },
    );
    return '$_temp0';
  }
}
