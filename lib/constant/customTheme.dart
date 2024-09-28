import 'package:flutter/material.dart';

class CustomTheme {
  static const Color textColor = Color.fromARGB(255, 255, 255, 255);
  static const Color greenYellowMainColor =
      Color(0xFFBADA55); // Couleur principale (vert-jaune)
  static const Color bgColor =
      Color.fromARGB(255, 0, 0, 0); // Couleur de fond tirée de la palette
  static const Color greyAccent = Color.fromARGB(255, 29, 29,
      29); // Tu peux conserver cette couleur si elle est utilisée ailleurs

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      'very small': 10,
      'small': 15,
      'medium': 20,
      'big medium': 25,
      'big': 30,
      'extra big': 42.5
    };
    return ThemeData(
      primaryColor:
          greenYellowMainColor, // Utilisation de la nouvelle couleur principale
      fontFamily: 'Isophan',
      textTheme: TextTheme(
        displayLarge:
            TextStyle(color: Colors.white, fontSize: fontSize['extra big']),
        headlineLarge: TextStyle(color: textColor, fontSize: fontSize['big']),
        displayMedium:
            TextStyle(color: textColor, fontSize: fontSize['big medium']),
        headlineMedium:
            TextStyle(color: textColor, fontSize: fontSize['medium']),
        displaySmall: TextStyle(color: textColor, fontSize: fontSize['small']),
        headlineSmall:
            TextStyle(color: textColor, fontSize: fontSize['very small']),
      ),
      // Tu peux aussi ajouter d'autres paramètres du thème ici si besoin
    );
  }
}
