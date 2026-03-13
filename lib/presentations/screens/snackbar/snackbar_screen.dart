import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  
  static const String routeName = 'snackbar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackbarScreen'),
      ),
      body: Center(
        child: Text('Hola desde SnackbarScreen!'),
      ),
    );
  }
}