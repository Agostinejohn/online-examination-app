class Question {
  String id;
  String examId;
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question({
    required this.id,
    required this.examId,
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}
