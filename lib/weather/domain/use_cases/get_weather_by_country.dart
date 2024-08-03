import 'package:clean_arch/weather/domain/Entities/wether.dart';
import 'package:clean_arch/weather/domain/repository/base_weather_repo.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);
 Future<Weather> execute(String cityName)async{
      return await repository.getWeatherByCityName(cityName);
  }
}