// lib/services/service_provider.dart

import 'auth_service.dart';
import 'exam_service.dart';
import 'question_service.dart';

class ServiceProvider {
  // Create static final instances of the services
  static final AuthService authService = AuthService();
  static final ExamService examService = ExamService();
  static final QuestionService questionService = QuestionService();

  // Private constructor to prevent instantiation
  ServiceProvider._();
}
