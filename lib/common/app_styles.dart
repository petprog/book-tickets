import 'package:flutter/material.dart';

const primary = Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color blueColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37C67);
  static Color kakiColor = const Color(0xFFd2bdb6);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineStyle1 = TextStyle(
    fontSize: 27,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle2 = TextStyle(
    fontSize: 22,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineStyle4 = TextStyle(
    fontSize: 12,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}
