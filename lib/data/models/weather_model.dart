import 'package:weather/domain/entities/weather/weather.dart';

class WeatherModel extends Weather{
  WeatherModel(super.id, super.main, super.description, super.pressure, super.cityName);

  factory WeatherModel.fromJson(Map<String,dynamic> json)=>
      WeatherModel(
          json["id"],
          json["weather"][0]["main"],
          json["weather"][0]["description"],
          json["main"]["pressure"],
          json["name"]
      );
}