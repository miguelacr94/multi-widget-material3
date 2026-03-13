import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const String routeName = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Screen'),
      ),
      body: Center(
        child: Text('Hola desde Animated Screen!'),
      ),
    );
  }
}