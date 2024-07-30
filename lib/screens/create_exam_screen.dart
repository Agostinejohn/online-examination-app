import 'package:flutter/material.dart';
import '../services/service_provider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class CreateExamScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  CreateExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Exam')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(label: 'Title', controller: titleController),
            CustomTextField(label: 'Description', controller: descriptionController),
            CustomButton(
              text: 'Create',
              onPressed: () {
                String title = titleController.text;
                String description = descriptionController.text;
                ServiceProvider.examService.createExam(title, description);
                Navigator.pop(context);
                Navigator.pushNamed(context, '/add_question', arguments: title);
              },
            ),
          ],
        ),
      ),
    );
  }
}
