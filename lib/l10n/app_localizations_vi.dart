// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get about_me_text =>
      'Tôi là một kỹ sư phần mềm đa năng đam mê xây dựng các sản phẩm toàn diện (end-to-end) và mạnh mẽ. Với nền tảng vững chắc về Trí tuệ Nhân tạo và phát triển đa nền tảng, tôi thích ứng nhanh với các công nghệ mới để giải quyết các vấn đề phức tạp. Từ việc triển khai các ứng dụng di động có thể mở rộng và trò chơi 2D tương tác đến chế tạo robot điều khiển bằng AI và phần cứng nhúng, tôi tận dụng một loạt các công nghệ đa dạng (Python, C++, Flutter, Godot) để biến những ý tưởng tham vọng thành hiện thực.';

  @override
  String get about => 'Giới thiệu';

  @override
  String get about_me => 'Giới thiệu';

  @override
  String get projects => 'Dự án';

  @override
  String get sports => 'Thể thao';

  @override
  String get championship =>
      'Giải vô địch Streetlifting Thế giới ISF 2023\nHuy chương Bạc (Nam -125kg)';

  @override
  String get contact => 'Liên hệ';

  @override
  String get hey => 'XIN CHÀO, TÔI LÀ';

  @override
  String get resume => 'Xem Hồ sơ';

  @override
  String get click_more => 'Xem Chi tiết';

  @override
  String get close => 'Đóng';

  @override
  String get all_rights => 'Mọi quyền được bảo lưu. Phát triển bằng Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'Một ứng dụng thể dục calisthenics được phát triển độc lập bằng Flutter. Thể hiện quyền sở hữu toàn bộ vòng đời sản phẩm, có kiến trúc đa ngôn ngữ có thể mở rộng (i18n), hiệu ứng UI/UX mượt mà tùy chỉnh và cơ sở dữ liệu cục bộ mạnh mẽ. Đã triển khai và duy trì thành công trên Google Play.',
        'adam':
            'Một robot hình người được thiết kế tùy chỉnh chứng minh AI hiện thân (Embodied AI). Tích hợp một luồng xử lý edge-computing độ trễ thấp bằng C++ và Python, đồng bộ hóa trơn tru các mô hình LLM trên nền tảng đám mây, bộ nhớ RAG cục bộ và phản hồi cảm biến với hơn 20 động cơ servo thông qua mạng UDP.',
        'johnny':
            'Một robot hình người vận hành bằng AI chú trọng vào việc tích hợp từ đám mây đến phần cứng. Đã phát triển một luồng giao tiếp UART mạnh mẽ từ Python đến Arduino để đồng bộ hóa chính xác các phản hồi hội thoại của Google Vertex AI và TTS với các cử chỉ cơ điện theo thời gian thực.',
        'pencil':
            'Một tựa game platform 2D đa nền tảng được phát triển trên Godot Engine. Được thiết kế hoàn toàn từ con số không, có nghệ thuật pixel tùy chỉnh, vật lý động học (kinematic) được làm riêng và kiến trúc máy trạng thái (state machine) được tối ưu hóa cho trải nghiệm chơi mượt mà trên nhiều nền tảng.',
        'speaker':
            'Các hệ thống âm thanh in 3D tùy chỉnh tiên tiến được thiết kế từ con số không. Kết hợp các bộ khuếch tán âm thanh hình học được mô hình hóa bằng CAD, điều chỉnh DSP chính xác thông qua ACPWorkbench và quản lý năng lượng BMS tích hợp để mang lại hiệu suất âm thanh có độ trung thực cao (high-fidelity) và biên độ dao động lớn.',
        'other': 'Không có mô tả dự án.',
      },
    );
    return '$_temp0';
  }
}
