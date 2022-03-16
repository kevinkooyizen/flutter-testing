import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/screens/location_screen.dart';
import 'package:flutter_testing/screens/yellow_screen.dart';

void main() {
  group('Yellow Screen test', () {
    _buildBaseScreen(WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LocationScreen(),
      ));
    }

    _navigateToYellowScreen(WidgetTester tester) async {
      // Tap button that says 'Click me to go to Yellow Screen'
      await tester.tap(find.text('Click me to go to Yellow Screen'));

      // wait for screen to build and animations to complete if any
      await tester.pumpAndSettle();
    }

    testWidgets(
      'taping yellow button to go to yellow screen',
      (WidgetTester tester) async {
        // setup my base screen
        await _buildBaseScreen(tester);

        // navigate to yellow screen
        await _navigateToYellowScreen(tester);

        // ensure I navigated to the yellow screen by type of widget that I can find
        expect(find.byType(YellowScreen), findsOneWidget);

        // ensure I navigated to the yellow screen by some expected text in the screen
        expect(find.text('This is a yellow Screen'), findsOneWidget);
      },
    );
  });
}
