import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor greenYellowToWhite = MaterialColor(
    0xFFBADA55, // Couleur principale : un vert qui tire vers le jaune
    <int, Color>{
      50: Color(0xffA6C24D),  // 10% plus foncé
      100: Color(0xffBADA55), // Couleur de base (20%)
      200: Color(0xffCCE36E), // 30%
      300: Color(0xffDFEC87), // 40%
      400: Color(0xffE9F5A0), // 50%
      500: Color(0xffF3FDB9), // 60%
      600: Color(0xffFDFED2), // 70%
      700: Color(0xffFEFEDC), // 80%
      800: Color(0xffFEFEE5), // 90%
      900: Color(0xffFEFEF1), // 100% plus clair
    },
  );
}
