// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screens/home_screen.dart';

void main() {
  testWidgets('Home screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(),
    ));

    // Verify that the 'Home Screen' text exists
    expect(find.text('Home Screen'), findsOneWidget);

    // Verify that the 'Yellow Screen button' exists
    expect(find.text('Yellow Screen'), findsOneWidget);

    // Verify that the 'Green Screen button' exists
    expect(find.text('Green Screen'), findsOneWidget);

    // Tap the 'Yellow Screen' button
    await tester.tap(find.text('Yellow Screen'));

    // Wait for the screen to change
    await tester.pumpAndSettle();

    // Expect the yellow screen to be displayed
    expect(find.text('This is a yellow Screen'), findsOneWidget);
  });
}
