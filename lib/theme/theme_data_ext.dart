import 'package:demo_getx/theme/app_colors.dart';
import 'package:flutter/material.dart';

extension ThemeDataExt on ThemeData {
  bool get isDark => brightness == Brightness.dark;

  AppColor get appColor =>
      isDark ? AppColorDark.instance : AppColorLight.instance;

  Color get textColor => appColor.textColor;
}
