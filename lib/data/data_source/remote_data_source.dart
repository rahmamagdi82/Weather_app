
import 'package:dio/dio.dart';
import 'package:weather/app/constants.dart';

import '../models/weather_model.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeather(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeather(String cityName) async {
    try {
      var response = await Dio().get('${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}');
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}