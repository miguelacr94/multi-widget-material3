import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  static const String routeName = 'card_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardScreen'),
      ),
      body: Center(
        child: Text('Hola desde CardScreen!'),
      ),
    );
  }
}