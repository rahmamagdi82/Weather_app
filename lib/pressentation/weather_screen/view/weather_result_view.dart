import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../app/di.dart';
import '../../../../domain/entities/weather/weather.dart';
import '../viewmodel/viewmodel.dart';

class WeatherResult extends StatefulWidget {
  const WeatherResult({super.key});

  @override
  State<WeatherResult> createState() => _WeatherResultState();
}

class _WeatherResultState extends State<WeatherResult> {
  final WeatherResultViewModel _viewModel = instance<WeatherResultViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SelectState(
                onCityChanged: (value) {
                  _viewModel.setCity(value);
                },
                onCountryChanged: (String value) {},
                onStateChanged: (String value) {},
              ),
              const SizedBox(height: 15.0,),
              StreamBuilder<bool?>(
                  stream: _viewModel.outISCityValid,
                  builder: (context, snapshot) {
                    return Container(
                      height: 40.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: ElevatedButton(
                        onPressed: (snapshot.data ?? false) ?
                            () {_viewModel.getResult();}
                            : null,
                        child: const Text(
                          'Get Weather',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 15.0,),
              StreamBuilder<Weather>(
                  stream: _viewModel.outputWeatherObject,
                  builder: (context, snapshot) {
                    return _getContent(snapshot.data,context);
                  }
                  ),
            ],
          ),
        ),
      ),
    );
  }

  _getContent(Weather? model,context) {
    if (model != null) {
      if(model.cityName.isNotEmpty) {
        return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 1.0, color: Colors.teal),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "City : ${model.cityName}",
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                'Pressure : ${model.pressure}',
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                "Description : ${model.description}",
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                "Main : ${model.main}",
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      );
      }
      else{
        return _getPopupDialog(context);
      }
    }
    else {
      return Container();
    }
  }


  Widget _getPopupDialog(context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(width: 1.0, color: Colors.teal),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Lottie.asset("assets/animation/error.json"),
    );
  }
}
