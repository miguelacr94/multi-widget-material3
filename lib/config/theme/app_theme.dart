import 'package:flutter/material.dart';

const colorList = <Color>[Colors.blue, Colors.teal, Colors.green, Colors.pink];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 2})
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
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
