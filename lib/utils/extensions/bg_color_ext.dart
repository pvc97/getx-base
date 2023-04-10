import 'package:demo_getx/models/bg_color.dart';
import 'package:flutter/material.dart';

extension BgColorExt on BgColor {
  Color get bgColor {
    switch (this) {
      case BgColor.red:
        return Colors.red;
      case BgColor.green:
        return Colors.green;
      case BgColor.blue:
        return Colors.blue;
    }
  }

  int get stepCount {
    switch (this) {
      case BgColor.red:
        return -10;
      case BgColor.green:
        return 10;
      case BgColor.blue:
        return 100;
    }
  }
}
