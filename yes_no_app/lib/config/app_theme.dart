import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'Colors must be between o and ${colorThemes.length}');

  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorThemes[selectedColor],
      );
}
