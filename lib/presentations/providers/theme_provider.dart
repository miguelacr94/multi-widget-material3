import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final themeProvider = StateProvider<bool>((ref) => false);

//LISTADO DE COLORES 
final colorsListProvider = Provider((ref)=>colorList);

final isDarkModeProvider = Provider<bool>((ref) => false);

final selectedColorProvider = StateProvider<int>((ref) => 0);