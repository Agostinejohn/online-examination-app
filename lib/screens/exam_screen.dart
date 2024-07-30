import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  _ExamScreenState createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    final Exam exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      appBar: AppBar(
        title: Text(exam.title),
      ),
      body: const Center(
        child: Text('Exam Screen Content'),
      ),
    );
  }
}
