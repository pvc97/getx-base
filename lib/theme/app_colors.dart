import 'package:flutter/material.dart';

abstract class AppColor {
  Color get textColor;
}

class AppColorLight implements AppColor {
  static final AppColorLight _instance = AppColorLight._internal();

  AppColorLight._internal();

  static AppColorLight get instance => _instance;

  @override
  Color get textColor => Colors.black;
}

class AppColorDark implements AppColor {
  static final AppColorDark _instance = AppColorDark._internal();

  AppColorDark._internal();

  static AppColorDark get instance => _instance;

  @override
  Color get textColor => Colors.white;
}
