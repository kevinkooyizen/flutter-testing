import 'package:flutter_testing/services/location.dart';
import 'package:flutter_testing/services/networking.dart';

const apiKey = 'b1c398b302e0589ebe6ba4a862070a2b';
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
      return '๐ฉ';
    } else if (condition! < 400) {
      return '๐ง';
    } else if (condition! < 600) {
      return 'โ๏ธ';
    } else if (condition! < 700) {
      return 'โ๏ธ';
    } else if (condition! < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition! <= 804) {
      return 'โ๏ธ';
    }

    return '๐คทโ';
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else if (temp < 5) {
      return 'You\'ll need ๐งฃ and ๐งค for negative 5';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
