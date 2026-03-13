import 'package:flutter/material.dart';

class AppTutorial extends StatelessWidget {
  const AppTutorial({super.key});

  static const String routeName = 'app-tutorial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Tutorial')),
      body: Center(child: Text('Hola desde App Tutorial!')),
    );
  }
}
