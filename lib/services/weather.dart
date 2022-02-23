import 'package:flutter_testing/services/location.dart';
import 'package:flutter_testing/services/networking.dart';

const apiKey = 'b1c398b302e0589ebe6ba4a862070a2b2';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  WeatherModel();
  int? condition;

  Future<Map?> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<Map?> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String get weatherIcon {
    if (condition! < 300) {
      return '🌩';
    } else if (condition! < 400) {
      return '🌧';
    } else if (condition! < 600) {
      return '☔️';
    } else if (condition! < 700) {
      return '☃️';
    } else if (condition! < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition! <= 804) {
      return '☁️';
    }

    return '🤷‍';
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else if (temp < 5) {
      return 'You\'ll need 🧣 and 🧤 for negative 5';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
