import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'location.dart';

const weatherUrl = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = '3a18734a266f19cd6b2fee73cbc64a4b';

class WeatherModel {
  Future<dynamic> getWeatherDataByCityName(String cityName) async {
    var weatherData = await NetWorkHelper(
            url: '$weatherUrl?q=$cityName&appid=$apiKey&units=metric')
        .getData();
    return weatherData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getCurrentLocation();

//ถ้าไม่ await ค่าที่เกิดขึ้นใน Console คือ Instance of Future<dynamic>
    var weatherData = await NetWorkHelper(
            url:
                '$weatherUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric')
        .getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
