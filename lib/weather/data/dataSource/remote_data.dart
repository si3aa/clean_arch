import 'dart:convert';

import 'package:clean_arch/core/util/constant.dart';
import 'package:clean_arch/weather/data/Models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCountryName(String countryName);

}
class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName)async {
     try {
      var response = await Dio().get(
          '${AppConstants.baseUrl}/weather?q=$countryName&appid=${AppConstants.apiKey}');
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}