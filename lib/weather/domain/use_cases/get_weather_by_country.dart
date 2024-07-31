import 'package:clean_arch/weather/domain/Entities/wether.dart';
import 'package:clean_arch/weather/domain/repository/weather_repo.dart';

class GetWeatherByCountryName{
  final WeatherRepository repository;

  GetWeatherByCountryName(this.repository);
 Future<Weather> execute(String cityName)async{
      return await repository.getWeatherByCityName(cityName);
  }
}