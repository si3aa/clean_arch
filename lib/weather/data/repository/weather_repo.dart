import 'package:clean_arch/weather/data/dataSource/remote_data.dart';
import 'package:clean_arch/weather/domain/Entities/wether.dart';
import 'package:clean_arch/weather/domain/repository/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
   return(await baseRemoteDataSource.getWeatherByCountryName(countryName))! ;
  }
}
