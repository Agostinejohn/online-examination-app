import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Math Exam'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam');
              },
              child: const Text('Start'),
            ),
          ),
          ListTile(
            title: const Text('Science Exam'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam');
              },
              child: const Text('Start'),
            ),
          ),
          ListTile(
            title: const Text('History Exam'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exam');
              },
              child: const Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
