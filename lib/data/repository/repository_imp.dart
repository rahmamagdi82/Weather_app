import 'package:weather/domain/entities/weather/weather.dart';
import 'package:weather/domain/repository/repository.dart';

import '../data_source/remote_data_source.dart';

class RepositoryImp extends BaseRepository{
  final BaseRemoteDataSource baseRemoteDataSource;

  RepositoryImp(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeather(String cityName) async{
    return (await baseRemoteDataSource.getWeather(cityName))!;
  }
}