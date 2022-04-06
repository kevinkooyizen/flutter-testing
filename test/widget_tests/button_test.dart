// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screens/location_screen.dart';

void main() {
  _buildBaseScreen(WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: LocationScreen(),
    ));
  }

  _navigateToCityScreen(WidgetTester tester) async {
    // Tap button to go to city screen
    await tester.tap(find.byIcon(Icons.location_city));

    // Wait for screen to build and animations to complete if any
    await tester.pumpAndSettle();
  }

  _navigateBackToLocationScreen(WidgetTester tester) async {
    // Tap button to go back to location screen
    await tester.tap(find.widgetWithText(TextButton, 'Go back'));

    // Wait for screen to build and animations to complete if any
    await tester.pumpAndSettle();
  }

  testWidgets('Go back button test', (WidgetTester tester) async {
    await _buildBaseScreen(tester);
    await _navigateToCityScreen(tester);
    await _navigateBackToLocationScreen(tester);

    // Ensure I navigated to the location screen by type of widget that I can find
    expect(find.byType(LocationScreen), findsOneWidget);

    // Verify that the location city icon exists
    expect(find.byIcon(Icons.location_city), findsOneWidget);
  });

  testWidgets('Increase count button test', (WidgetTester tester) async {
    await _buildBaseScreen(tester);
    await _navigateToCityScreen(tester);

    // Tap button to increase count
    await tester.tap(find.widgetWithText(TextButton, 'Increase count: 0'));

    await tester.pumpAndSettle();

    // Check that the count is increased by 1
    expect(
        find.widgetWithText(TextButton, 'Increase count: 1'), findsOneWidget);
  });
}
