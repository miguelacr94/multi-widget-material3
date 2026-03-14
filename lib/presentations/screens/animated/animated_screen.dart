import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const String routeName = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();
    setState(() {
      width = random.nextInt(300).toDouble() + 50;
      height = random.nextInt(300).toDouble() + 50;
      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      borderRadius = random.nextInt(100).toDouble() + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Screen')),
      body: Center(
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
            width: width <= 0 ? 0 : width,
            height: height <= 0 ? 0 : height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}


