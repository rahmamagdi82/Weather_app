import '../entities/weather/weather.dart';

abstract class BaseRepository{
  Future<Weather> getWeather(String cityName);
}