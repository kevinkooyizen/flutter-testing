// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/utilities/string_helper.dart';

void main() {
  group('String helper tests', () {
    test(
      'Test toUpperCase function of string helper',
      () {
        const String testString = 'test';

        expect(StringHelper().toUpperCase(testString), 'TEST');
      },
    );

    // Test to test toLowerCase function of string helper
    test(
      'Test toLowerCase function of string helper',
      () {
        const String testString = 'TEST';

        expect(StringHelper().toLowerCase(testString), 'test');
      },
    );
  });
}
