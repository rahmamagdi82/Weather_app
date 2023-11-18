import 'package:weather/domain/entities/weather/weather.dart';
import 'package:weather/domain/repository/repository.dart';

class GetWeather{
  final BaseRepository repository;

  GetWeather(this.repository);

  Future<Weather> execute(String cityName) async{
    return await repository.getWeather(cityName);
  }
}