import 'package:flutter/material.dart';
import 'package:online_exam_app/models/exam.dart';
import '../services/service_provider.dart';

class ExamDetailScreen extends StatelessWidget {
  final String examId;

  const ExamDetailScreen({required this.examId, super.key});

  @override
  Widget build(BuildContext context) {
    Exam exam = ServiceProvider.examService.getExamById(examId);

    return Scaffold(
      appBar: AppBar(title: Text(exam.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(exam.description, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            const Text('Questions:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: exam.questions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(exam.questions[index].text),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
