import 'package:flutter/material.dart';

const colorList = <Color>[Colors.blue, Colors.teal, Colors.green, Colors.pink];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;


  AppTheme({this.selectedColor = 2, this.isDarkMode = false})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'El seleccionador de color debe estar entre 0 y ${colorList.length - 1}',
      ),
      assert(
        selectedColor < colorList.length,
        'El color seleccionado no debe ser mayor a el numero total de colores disponibles',
      );
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
