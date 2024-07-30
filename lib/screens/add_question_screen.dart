import 'package:flutter/material.dart';
import '../services/service_provider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../models/question.dart';

class AddQuestionScreen extends StatefulWidget {
  final String examId;

  const AddQuestionScreen({super.key, required this.examId});

  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final TextEditingController questionController = TextEditingController();
  final List<TextEditingController> optionControllers = List.generate(4, (_) => TextEditingController());
  int correctOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Question')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(label: 'Question', controller: questionController),
            ...List.generate(4, (index) {
              return CustomTextField(label: 'Option ${index + 1}', controller: optionControllers[index]);
            }),
            DropdownButton<int>(
              value: correctOptionIndex,
              items: List.generate(4, (index) {
                return DropdownMenuItem(
                  value: index,
                  child: Text('Correct Option ${index + 1}'),
                );
              }),
              onChanged: (value) {
                setState(() {
                  correctOptionIndex = value!;
                });
              },
            ),
            CustomButton(
              text: 'Add Question',
              onPressed: () {
                final question = Question(
                  id: DateTime.now().toString(),
                  examId: widget.examId,
                  questionText: questionController.text,
                  options: optionControllers.map((controller) => controller.text).toList(),
                  correctOptionIndex: correctOptionIndex,
                );
                ServiceProvider.examService.addQuestion(widget.examId, question);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
