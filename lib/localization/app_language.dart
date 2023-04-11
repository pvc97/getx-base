import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';

part 'app_language.g.dart';

@HiveType(typeId: 1)
enum AppLanguage {
  @HiveField(0)
  english,
  @HiveField(1)
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
