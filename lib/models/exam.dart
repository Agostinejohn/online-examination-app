class Exam {
  String id;
  String title;
  String description;
  DateTime date;

  Exam({
    required this.id,
    required this.title,
    required this.description,
    required this.date, required List<Map<String, dynamic>> questions,
  });

  get questions => null;
}
