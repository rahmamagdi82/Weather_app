import 'package:flutter/material.dart';

class ColorManager{
  static Color darkMove = const Color(0xFF3D2C8E);
  static Color lightMove = const Color(0xB29D52AC);
  static Color black = const Color(0xff000000);
  static Color white = const Color(0xffFFFFFF);

  static Gradient backgroundGradient = LinearGradient(
    begin: const Alignment(-0.76, -0.65),
    end: const Alignment(0.76, 0.65),
    colors: [darkMove, lightMove],
  );
}