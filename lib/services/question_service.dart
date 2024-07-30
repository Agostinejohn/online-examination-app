import '../models/question.dart';

class QuestionService {
  final List<Question> _questions = [];

  void addQuestion(String examId, String questionText, List<String> options, int correctOptionIndex) {
    _questions.add(Question(
      id: DateTime.now().toString(),
      examId: examId,
      questionText: questionText,
      options: options,
      correctOptionIndex: correctOptionIndex,
    ));
  }

  List<Question> getQuestions(String examId) {
    return _questions.where((question) => question.examId == examId).toList();
  }

  void deleteQuestion(String id) {
    _questions.removeWhere((question) => question.id == id);
  }
}
