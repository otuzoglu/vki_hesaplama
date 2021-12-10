import 'package:flutter/material.dart';

Color rkZeminArkaPlan = Colors.grey.shade800;

Color rkAktifCardBackColor = Colors.grey.shade700;
Color rkPasifCardBackColor = Colors.grey.shade900;

Color rkCardForeColor = Colors.white70;

TextStyle stilBoyYaziStyle = TextStyle(color: rkCardForeColor, fontSize: 20);
TextStyle stilCmYaziStyle = TextStyle(color: rkCardForeColor);
TextStyle stilRakamYaziStyle = TextStyle(
  color: rkCardForeColor,
  fontSize: 50,
);

TextStyle tsActivCardColor = TextStyle(
  color: rkCardForeColor,
);

TextStyle tsHeightStyle = TextStyle(
  color: rkCardForeColor,
  fontSize: 80,
  fontWeight: FontWeight.bold,
);

TextStyle tsCmStyle = TextStyle(
  color: rkCardForeColor,
);

SliderThemeData stSliderTheme = SliderThemeData(
  inactiveTrackColor: Color(0xFF8D8E98),
  activeTrackColor: Colors.yellow,
  thumbColor: Color(0xFFEB1555),
  overlayColor: Color(0x29EB1555),
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 45.0),
);
