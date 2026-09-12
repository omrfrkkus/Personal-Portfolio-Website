// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get about_me_text =>
      'אני מהנדס תוכנה ורסטילי בעל תשוקה לבניית מוצרים חזקים מקצה לקצה (end-to-end). עם בסיס איתן בבינה מלאכותית ופיתוח מרובה פלטפורמות, אני מסתגל במהירות לטכנולוגיות חדשות כדי לפתור בעיות מורכבות. מפריסת יישומי מובייל סקיילביליים ומשחקי 2D אינטראקטיביים ועד להנדסת רובוטיקה מונעת בינה מלאכותית וחומרה משובצת, אני ממנף מגוון רחב של טכנולוגיות (Python, C++, Flutter, Godot) כדי להפוך רעיונות שאפתניים למציאות פונקציונלית.';

  @override
  String get about => 'אודות';

  @override
  String get about_me => 'אודותיי';

  @override
  String get projects => 'פרויקטים';

  @override
  String get sports => 'ספורט';

  @override
  String get championship =>
      'אליפות העולם בסטריטליפטינג ISF לשנת 2023\nמדליסט כסף (גברים עד 125 ק\"ג)';

  @override
  String get contact => 'יצירת קשר';

  @override
  String get hey => 'שלום, אני';

  @override
  String get resume => 'צפייה בקורות חיים';

  @override
  String get click_more => 'פרטים נוספים';

  @override
  String get close => 'סגירה';

  @override
  String get all_rights => 'כל הזכויות שמורות. פותח באמצעות Flutter.';

  @override
  String project_description(String projects) {
    String _temp0 = intl.Intl.selectLogic(
      projects,
      {
        'gorilla':
            'אפליקציית כושר לקליסתניקס שפותחה באופן עצמאי באמצעות Flutter. מדגימה ניהול מלא של מחזור חיי המוצר, כוללת ארכיטקטורה רב-לשונית מודולרית (i18n), אנימציות UI/UX חלקות ומותאמות אישית, ומסד נתונים מקומי יציב. הושקה ומתוחזקת בהצלחה ב-Google Play.',
        'adam':
            'רובוט דמוי אדם (Humanoid) שנבנה בהתאמה אישית להדגמת בינה מלאכותית מוגפנת (Embodied AI). כולל ארכיטקטורת מחשוב קצה (Edge computing) בעלת שיהוי נמוך ב-C++ ו-Python, המסנכרנת באופן רציף מודלי שפה בענן (LLMs), זיכרון RAG מקומי והיתוך חיישנים (Sensor fusion) עם מעל 20 מנועי סרוו דרך רשת UDP.',
        'johnny':
            'רובוט דמוי אדם מונע בינה מלאכותית עם דגש על אינטגרציית ענן-חומרה. פותח צינור תקשורת UART יציב מ-Python ל-Arduino לסנכרון מדויק בזמן אמת של תגובות שיחה ומנוע טקסט-לדיבור (TTS) מבית Google Vertex AI עם מחוות אלקטרומכניות.',
        'pencil':
            'משחק פלטפורמה 2D חוצה-פלטפורמות שפותח במנוע Godot. נבנה כולו מאפס, כולל פיקסל ארט ייחודי, מנוע פיזיקה קינמטי מותאם אישית וארכיטקטורת מכונת מצבים (State machine) ממוטבת לחוויית משחק חלקה במגוון פלטפורמות.',
        'speaker':
            'מערכות אקוסטיות מתקדמות בהדפסת תלת-ממד שנבנו מאפס. משלבות מפזרי קול גיאומטריים שתוכננו ב-CAD, כיול DSP מדויק באמצעות ACPWorkbench ומערכת ניהול סוללה (BMS) מובנית כדי לספק ביצועי שמע בעלי נאמנות גבוהה (Hi-Fi) ותנועת דרייברים רחבה.',
        'other': 'תיאור הפרויקט אינו זמין.',
      },
    );
    return '$_temp0';
  }
}
