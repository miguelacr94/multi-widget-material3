import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const String routeName = 'progress';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: Center(
        child: Text('Hola desde Progress!'),
      ),
    );
  }
}