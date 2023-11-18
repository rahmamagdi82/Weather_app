import 'dart:async';
import 'package:weather/domain/usecase/get_weather_usecase.dart';

import '../../../../domain/entities/weather/weather.dart';

class WeatherResultViewModel extends WeatherResultViewModelInputs with WeatherResultViewModelOutputs{
  final StreamController _cityStreamController = StreamController<String>.broadcast();
  final _weatherObjectStreamController= StreamController<Weather>.broadcast();

  final GetWeather _getWeather;
  WeatherResultViewModel(this._getWeather);
  var cityName='';


  void dispose() {
    _cityStreamController.close();
    _weatherObjectStreamController.close();
  }

  void start() {}

  @override
  Sink get inputCity => _cityStreamController.sink;

  @override
  Sink get inputWeatherObject => _weatherObjectStreamController.sink;

  @override
  Stream<bool> get outISCityValid => _cityStreamController.stream.map((city) => _isCityValid(city));

  @override
  Stream<Weather> get outputWeatherObject => _weatherObjectStreamController.stream.map((data) => data);


  @override
  setCity(String city) {
    inputCity.add(city);
    cityName=city;
    _isCityValid(city);
  }

  @override
  getResult() async {
    (await _getWeather.execute(cityName).then((value) {
      _weatherObjectStreamController.add(value);
    }).catchError((onError){
        _weatherObjectStreamController.add(Weather(0, '', '', 0, ''));
    })
    );
    }
  }

  _isCityValid(String city){
    return city.isNotEmpty;
  }





abstract class WeatherResultViewModelInputs{
  setCity(String city);
  getResult();

  Sink get inputCity;
  Sink get inputWeatherObject;

}

abstract class WeatherResultViewModelOutputs{
  Stream<bool> get outISCityValid;
  Stream<Weather> get outputWeatherObject;
}