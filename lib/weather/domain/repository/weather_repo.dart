import 'package:clean_arch/weather/domain/Entities/wether.dart';

abstract class WeatherRepository{
  Future<Weather>getWeatherByCityName(String cityName);
}