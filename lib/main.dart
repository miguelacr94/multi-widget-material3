import 'package:flutter/material.dart';
import 'package:widget_app/config/route/route_app.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      routerConfig: appRouter,
    );
  }
}
