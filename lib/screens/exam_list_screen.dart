import 'package:flutter/material.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulated list of exams
    final List<Map<String, String>> exams = [
      {'title': 'Math Exam', 'description': 'Algebra, Geometry, Calculus', 'date': '2024-07-02'},
      {'title': 'Science Exam', 'description': 'Physics, Chemistry, Biology', 'date': '2024-07-03'},
      {'title': 'History Exam', 'description': 'Ancient, Medieval, Modern', 'date': '2024-07-04'},
      {'title': 'Literature Exam', 'description': 'Poetry, Prose, Drama', 'date': '2024-07-05'},
      {'title': 'Geography Exam', 'description': 'Physical, Human, Environmental', 'date': '2024-07-06'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exams List'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          return ListTile(
            title: Text(exam['title']!),
            subtitle: Text('Date: ${exam['date']}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/exam',
                arguments: exam,
              );
            },
          );
        },
      ),
    );
  }
}
