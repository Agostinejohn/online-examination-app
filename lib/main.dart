import 'package:flutter/material.dart';
import 'screens/add_question_screen.dart';
import 'screens/admin_home_screen.dart';
import 'screens/candidate_home_screen.dart';
import 'screens/exam_list_screen.dart';
import 'screens/exam_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/view_results_screen.dart';
import 'screens/take_exam_screen.dart';
import 'screens/create_exam_screen.dart';
import 'screens/view_exams_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Examination App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/exam_list': (context) => const ExamListScreen(),
        '/exam': (context) => const ExamScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/admin_home': (context) => const AdminHomeScreen(),
        '/candidate_home': (context) => const CandidateHomeScreen(),
        '/add_question': (context) {
          final examId = ModalRoute.of(context)!.settings.arguments as String;
          return AddQuestionScreen(examId: examId);
        },
        '/view_results': (context) {
          final int correctAnswers = ModalRoute.of(context)!.settings.arguments as int;
          return ViewResultsScreen(correctAnswers: correctAnswers);
        },
        '/take_exam': (context) => const TakeExamScreen(),
        '/create_exam': (context) => CreateExamScreen(),
        '/view_exams': (context) => const ViewExamsScreen(),
      },
    );
  }
}
