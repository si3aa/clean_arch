import 'package:clean_arch/weather/data/dataSource/remote_data.dart';
import 'package:clean_arch/weather/data/repository/weather_repo.dart';
import 'package:clean_arch/weather/domain/repository/base_weather_repo.dart';
import 'package:clean_arch/weather/domain/use_cases/get_weather_by_country.dart';
import 'package:flutter/material.dart';

void main()async {
  BaseRemoteDataSource remoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository = WeatherRepository(remoteDataSource);
 await GetWeatherByCountryName(baseWeatherRepository).execute("Egypt");
  
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
