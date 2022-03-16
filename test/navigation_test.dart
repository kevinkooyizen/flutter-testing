import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screens/green_screen.dart';
import 'package:flutter_testing/screens/location_screen.dart';

void main() {
  group('Location Screen navigation tests', () {
    Future<void> _buildLocationScreen(WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LocationScreen(),
      ));
    }

    Future<void> _navigateToGreenScreen(WidgetTester tester) async {
      // Tap the button which should navigate to the green screen page.
      await tester.tap(find.text('Go to Green Screen'));

      // By calling tester.pumpAndSettle(), we ensure that all animations
      // have completed before we continue further.
      await tester.pumpAndSettle();
    }

    testWidgets(
      'When tapping "navigate to details" button, should navigate to details page',
      (WidgetTester tester) async {
        await _buildLocationScreen(tester);
        await _navigateToGreenScreen(tester);

        // ...and there should be a GreenScreen present in the widget tree...
        expect(find.byType(GreenScreen), findsOneWidget);

        // ...with additional validation that the screen contains expected text.
        expect(find.text('This is a green screen'), findsOneWidget);
      },
    );
  });
}
