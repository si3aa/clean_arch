import 'package:clean_arch/weather/domain/Entities/wether.dart';

abstract class BaseWeatherRepository{
  Future<Weather>getWeatherByCityName(String cityName);
}