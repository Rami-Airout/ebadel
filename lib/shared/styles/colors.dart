import 'package:flutter/material.dart';
extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

Color ColorDark = '0d1011'.toColor();
Color ColorLight = 'e7e4e3'.toColor();
Color? TxtColor =  '909090'.toColor();
Color DefaultButtonColor = '242424'.toColor();
Color IconColor = '262b2b'.toColor();
Color cor = Colors.amber;