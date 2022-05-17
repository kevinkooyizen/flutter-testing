/// This is a golden test for the home screen.
import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/home_screen.dart';
import 'package:flutter_testing/utilities/phone_constants.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  /// Golden test for home screen
  testGoldens('Home Screen Golden test', (tester) async {
    // Initialize the home screen widget
    final widget = Theme(
      data: ThemeData.dark(),
      child: const HomeScreen(),
    );

    // Setup device builder with different sizes and text scale factors
    final builder = PhoneConstants.deviceBuilder
      ..addScenario(name: 'Home Screen', widget: widget);

    await tester.pumpDeviceBuilder(builder);

    // Check if tester matches with existing screenshot
    // Run 'flutter test test/golden_tests --update-goldens --tags=golden' to generate screenshot
    await screenMatchesGolden(tester, 'home_screen');
  });
}
