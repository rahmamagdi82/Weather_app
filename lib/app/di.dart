import 'package:get_it/get_it.dart';
import 'package:weather/domain/usecase/get_weather_usecase.dart';

import '../data/data_source/remote_data_source.dart';
import '../data/repository/repository_imp.dart';
import '../domain/repository/repository.dart';
import '../pressentation/weather_screen/viewmodel/viewmodel.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async{

  instance.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
  instance.registerLazySingleton<BaseRepository>(() => RepositoryImp(instance()));

}

initWeatherModule(){
  if(!GetIt.I.isRegistered<GetWeather>())
  {
    instance.registerFactory<GetWeather>(() => GetWeather(instance()));
   instance.registerFactory<WeatherResultViewModel>(() => WeatherResultViewModel(instance()));
  }
}