// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get about_me_text =>
      'ผมเป็นวิศวกรซอฟต์แวร์ที่มุ่งเน้นด้านหุ่นยนต์ ปัญญาประดิษฐ์ และประสบการณ์ดิจิทัลที่ใส่ใจในรายละเอียด';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get about_me => 'เกี่ยวกับฉัน';

  @override
  String get projects => 'โปรเจกต์';

  @override
  String get sports => 'กีฬา';

  @override
  String get championship =>
      'ชิงแชมป์โลกสตรีทลิฟติ้ง ISF ปี 2023\nเหรียญเงิน (ชายรุ่น -125 กก.)';

  @override
  String get contact => 'ติดต่อ';

  @override
  String get hey => 'สวัสดี ฉันคือ';

  @override
  String get resume => 'ดูเรซูเม่';

  @override
  String get click_more => 'ดูรายละเอียด';

  @override
  String get close => 'ปิด';

  @override
  String get all_rights => 'สงวนลิขสิทธิ์ พัฒนาด้วย Flutter';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'แอปพลิเคชันฟิตเนสคาลิสเธนิกส์ที่พัฒนาด้วย Flutter โดยนักพัฒนาคนเดียว แสดงถึงความเป็นเจ้าของผลิตภัณฑ์แบบเต็มวงจร (Full-cycle) โดดเด่นด้วยโครงสร้างที่รองรับหลายภาษา (i18n) แอนิเมชัน UI/UX ที่ลื่นไหลและปรับแต่งได้ และฐานข้อมูลในเครื่องที่แข็งแกร่ง เปิดตัวและบำรุงรักษาสำเร็จบน Google Play',
        'adam':
            'หุ่นยนต์ฮิวแมนนอยด์ที่ได้รับการออกแบบทางวิศวกรรมเฉพาะเพื่อแสดงถึง Embodied AI มีระบบประมวลผลเอดจ์ (Edge-computing) ความหน่วงต่ำด้วย C++ และ Python ที่เชื่อมต่อ LLM บนคลาวด์, หน่วยความจำ RAG ในเครื่อง และฟิวชันเซนเซอร์กับเซอร์โวมอเตอร์กว่า 20 ตัวผ่านเครือข่าย UDP อย่างราบรื่น',
        'johnny':
            'หุ่นยนต์ฮิวแมนนอยด์ขับเคลื่อนด้วย AI ที่เน้นการผสานคลาวด์กับฮาร์ดแวร์ พัฒนาระบบการสื่อสาร UART จาก Python สู่ Arduino ที่แข็งแกร่ง เพื่อซิงโครไนซ์การตอบสนองเชิงสนทนาของ Google Vertex AI และ TTS กับการเคลื่อนไหวทางกลศาสตร์ไฟฟ้าแบบเรียลไทม์ได้อย่างแม่นยำ',
        'pencil':
            'เกมแพลตฟอร์ม 2D ข้ามแพลตฟอร์มที่พัฒนาใน Godot Engine สร้างขึ้นจากศูนย์ทั้งหมด มีพิกเซลอาร์ตแบบกำหนดเอง ระบบฟิสิกส์คิเนเมติกที่สร้างขึ้นเฉพาะ และสถาปัตยกรรม State Machine ที่ปรับให้เหมาะสมเพื่อการเล่นเกมหลายแพลตฟอร์มที่ลื่นไหล',
        'speaker':
            'ระบบอะคูสติกขั้นสูงที่พิมพ์ 3 มิติและออกแบบขึ้นเองจากศูนย์ ผสมผสานตัวกระจายเสียงทางเรขาคณิตที่จำลองด้วย CAD, การปรับแต่ง DSP ที่แม่นยำผ่าน ACPWorkbench และการจัดการพลังงาน BMS แบบบูรณาการเพื่อมอบประสิทธิภาพเสียงที่มีความเที่ยงตรงสูง (High-Fidelity) และการสั่นสะเทือนสูง',
        'other': 'ไม่มีรายละเอียดของโปรเจกต์นี้',
      },
    );
    return '$_temp0';
  }
}
