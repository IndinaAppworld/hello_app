import 'package:flutter/material.dart';

class Palette {
  // background gradient
  static Color blueSky = Color(0xFF068FFA);
  static Color greenLand = Color(0xFF89ED91);

  // card gradient
  static Color blueSkyLight = Color(0x40068FFA);
  static Color greenLandLight = Color(0x4089ED91);

  static Color blueSkyLighter = Color(0x10068FFA);
  static Color primaryColor=_colorFromHex('#C9766E');
  static Color whileColor=_colorFromHex('#ffffff');

  static Color menuColor1=_colorFromHex("#b3827d");
}
Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
