import 'package:flutter/widgets.dart';

enum AppLanguage {
  english,
  vietnamese,
}

extension AppLanguageExt on AppLanguage {
  String get langCode {
    switch (this) {
      case AppLanguage.english:
        return 'en';
      case AppLanguage.vietnamese:
        return 'vi';
    }
  }

  Locale get locale {
    switch (this) {
      case AppLanguage.english:
        return const Locale('en', 'US');
      case AppLanguage.vietnamese:
        return const Locale('vi', 'VN');
    }
  }
}
