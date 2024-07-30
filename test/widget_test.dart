// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:online_exam_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Navigate to Exam List Screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the button to navigate to the Exam List Screen and tap it.
    // Assuming there is a button on the home page that navigates to the Exam List Screen
    await tester.tap(find.text('Exam List'));
    await tester.pumpAndSettle();

    // Verify that we have navigated to the Exam List Screen.
    expect(find.text('Exam List'), findsOneWidget);
  });

  testWidgets('Navigate to Exam Screen from Exam List Screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Navigate to the Exam List Screen.
    await tester.tap(find.text('Exam List'));
    await tester.pumpAndSettle();

    // Find the first exam in the list and tap it to navigate to the Exam Screen.
    await tester.tap(find.text('Sample Exam'));
    await tester.pumpAndSettle();

    // Verify that we have navigated to the Exam Screen.
    expect(find.text('Sample Exam'), findsOneWidget);
    expect(find.text('Exam Screen Content'), findsOneWidget);
  });
}
