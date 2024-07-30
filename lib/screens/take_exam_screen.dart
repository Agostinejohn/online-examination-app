import 'package:flutter/material.dart';

class TakeExamScreen extends StatefulWidget {
  const TakeExamScreen({super.key});

  @override
  _TakeExamScreenState createState() => _TakeExamScreenState();
}

class _TakeExamScreenState extends State<TakeExamScreen> {
  int _currentQuestionIndex = 0;
  final Map<int, String> _selectedAnswers = {};
  late List<Map<String, dynamic>> _questions;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final exam = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    _questions = exam['questions'];
  }

  void _submitExam() {
    int correctAnswers = 0;
    for (var i = 0; i < _questions.length; i++) {
      if (_selectedAnswers[i] == _questions[i]['correctAnswer']) {
        correctAnswers++;
      }
    }

    Navigator.pushReplacementNamed(
      context,
      '/view_results',
      arguments: correctAnswers,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take Exam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _questions[_currentQuestionIndex]['question'],
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ..._questions[_currentQuestionIndex]['options'].map<Widget>((option) {
              return RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: _selectedAnswers[_currentQuestionIndex],
                onChanged: (value) {
                  setState(() {
                    _selectedAnswers[_currentQuestionIndex] = value!;
                  });
                },
              );
            }).toList(),
            const SizedBox(height: 20.0),
            if (_currentQuestionIndex < _questions.length - 1)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _currentQuestionIndex++;
                  });
                },
                child: const Text('Next Question'),
              ),
            if (_currentQuestionIndex == _questions.length - 1)
              ElevatedButton(
                onPressed: _submitExam,
                child: const Text('Submit Exam'),
              ),
          ],
        ),
      ),
    );
  }
}
