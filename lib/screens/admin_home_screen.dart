import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../widgets/custom_button.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              authService.logout();
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Create Exam',
              onPressed: () {
                Navigator.pushNamed(context, '/create_exam');
              },
            ),
            CustomButton(
              text: 'Add Questions',
              onPressed: () {
                Navigator.pushNamed(context, '/add_question');
              },
            ),
            // Remove this if it exists
            // CustomButton(
            //   text: 'View Exams',
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/view_exams');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
