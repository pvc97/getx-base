import 'package:demo_getx/localization/app_language.dart';
import 'package:demo_getx/localization/en_us.dart';
import 'package:demo_getx/localization/vi_vn.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  // Default locale
  static final Locale locale = AppLanguage.english.locale;

  // FallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = AppLanguage.vietnamese.locale;

  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        'en_US': enUS,
        'vi_VN': viVn,
      };

  static final locales = AppLanguage.values.map((lang) => lang.locale);

  static final List<LocalizationsDelegate> localizationsDelegate = [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static void changeLocale(AppLanguage lang) {
    Get.updateLocale(_getLocaleFromLanguage(lang));
  }

  static Locale _getLocaleFromLanguage(AppLanguage lang) {
    return lang.locale;
  }
}
