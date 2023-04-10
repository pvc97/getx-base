import 'package:demo_getx/localization/app_language.dart';
import 'package:demo_getx/localization/localization_service.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getSavedLanguage();
  }

  void getSavedLanguage() async {
    // TODO: Read from local storage
    // changeLanguage(AppLanguage.english);
  }

  void changeLanguage(AppLanguage lang) {
    LocalizationService.changeLocale(lang);
  }
}
