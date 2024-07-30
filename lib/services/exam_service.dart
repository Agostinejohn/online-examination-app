import '../models/exam.dart';
import '../models/question.dart';

class ExamService {
  final List<Exam> _exams = [];

  void addExam(String title, String description, DateTime date) {
    _exams.add(
      Exam(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        date: date,
        questions: [],
      ),
    );
  }

  List<Exam> getExams() {
    return _exams;
  }

  void deleteExam(String id) {
    _exams.removeWhere((exam) => exam.id == id);
  }

  void createExam(String title, String description) {
    final newExam = Exam(
      id: DateTime.now().toString(),
      title: title,
      description: description,
      date: DateTime.now(),
      questions: generateAdvancedQuestions(),
    );
    _exams.add(newExam);
  }

  Exam getExamById(String examId) {
    try {
      return _exams.firstWhere((exam) => exam.id == examId);
    } catch (e) {
      throw Exception('Exam not found');
    }
  }

  void addQuestion(String examId, Question question) {
    final exam = getExamById(examId);
    exam.questions.add({
      'id': question.id,
      'examId': question.examId,
      'questionText': question.questionText,
      'options': question.options,
      'correctOptionIndex': question.correctOptionIndex,
    });
  }

  List<Map<String, dynamic>> generateAdvancedQuestions() {
    return [
      {
        'id': DateTime.now().toString(),
        'examId': 'advanced',
        'questionText': 'Explain the significance of the Fourier Transform in signal processing.',
        'options': ['It converts a signal from time domain to frequency domain', 'It compresses a signal', 'It amplifies a signal', 'It encrypts a signal'],
        'correctOptionIndex': 0,
      },
      {
        'id': DateTime.now().toString(),
        'examId': 'advanced',
        'questionText': 'Discuss the implications of Gödel’s incompleteness theorems on modern mathematics.',
        'options': ['They show that some truths cannot be proven within a system', 'They simplify proofs in mathematics', 'They disprove all mathematical theories', 'They provide a unified theory of everything'],
        'correctOptionIndex': 0,
      },
      // Add more advanced questions similarly
    ];
  }
}
