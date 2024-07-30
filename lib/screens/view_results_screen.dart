import 'package:flutter/material.dart';

class ViewResultsScreen extends StatelessWidget {
  final int correctAnswers;

  const ViewResultsScreen({super.key, required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Results'),
      ),
      body: Center(
        child: Text(
          'You got $correctAnswers out of 10 correct.',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
