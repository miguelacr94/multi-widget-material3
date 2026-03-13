import 'package:flutter/material.dart';

class UiControls extends StatelessWidget {
  const UiControls({super.key});

  static const String routeName = 'ui-controls';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UiControls'),
      ),
      body: Center(
        child: Text('Hola desde UiControls!'),
      ),
    );
  }
}