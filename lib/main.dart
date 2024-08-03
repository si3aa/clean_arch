import 'package:clean_arch/weather/data/dataSource/remote_data.dart';
import 'package:clean_arch/weather/data/repository/weather_repo.dart';
import 'package:clean_arch/weather/domain/Entities/wether.dart';
import 'package:clean_arch/weather/domain/repository/base_weather_repo.dart';
import 'package:clean_arch/weather/domain/use_cases/get_weather_by_country.dart';
import 'package:flutter/material.dart';

void main() async {
  BaseRemoteDataSource remoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(remoteDataSource);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepository).execute("Egypt");
  print(weather);
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Weather App',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: const Center(
          child: Text(
            'My Project',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
