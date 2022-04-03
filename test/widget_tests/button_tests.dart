// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screens/city_screen.dart';

void main() {
  testWidgets('Go back button test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: CityScreen(),
    ));

    // Find 'Go back' button
    expect(find.text('Go back'), findsOneWidget);

    await tester.tap(find.widgetWithText(TextButton, 'Go back'));

    // wait for screen to build and animations to complete if any
    await tester.pumpAndSettle();

    // Verify that the location city icon exists
    expect(find.byIcon(Icons.location_city), findsOneWidget);
  });
}
