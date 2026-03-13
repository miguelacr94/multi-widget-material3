import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const String routeName = 'progress';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress')),
      body: Center(child: _ProgressView()),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text('Circular Progress'),
        const SizedBox(height: 20),
        const CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        const SizedBox(height: 30),
        Text('Linear Progress'),
        const SizedBox(height: 20),
        _ControllerProgressIndicator(),
      ],
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) => (value * 2) / 100,
      ).takeWhile((value) => value < 100),
      builder: (context, asyncSnapshot) {
        final progressValue = asyncSnapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.black45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
