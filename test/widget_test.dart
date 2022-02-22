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
  testWidgets('City input smoke test', (WidgetTester tester) async {
    var weatherData = {
      "coord": {"lon": 101.6781, "lat": 3.1174},
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 24.69,
        "feels_like": 25.56,
        "temp_min": 24.5,
        "temp_max": 26.83,
        "pressure": 1013,
        "humidity": 90
      },
      "visibility": 10000,
      "wind": {"speed": 0.51, "deg": 0},
      "clouds": {"all": 20},
      "dt": 1645543079,
      "sys": {
        "type": 1,
        "id": 9446,
        "country": "MY",
        "sunrise": 1645485954,
        "sunset": 1645529287
      },
      "timezone": 28800,
      "id": 1735161,
      "name": "Kuala Lumpur",
      "cod": 200
    };

    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: LocationScreen(
        locationWeather: weatherData,
      ),
    ));

    // Verify that the location city icon exists
    expect(find.byIcon(Icons.location_city), findsOneWidget);

    // Verify that the correct text is displayed
    expect(find.text('24°'), findsOneWidget);
    expect(find.text('☁️'), findsOneWidget);
    expect(find.text('Time for shorts and 👕 in Kuala Lumpur'), findsOneWidget);
  });
}
