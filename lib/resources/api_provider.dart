
import 'package:dio/dio.dart';
import 'package:flutter_bloc_dio/models/covid_model.dart';

class ApiProvider {

    final Dio _dio = Dio();
    final String _url = 'https://api.covid19api.com/summary';

    Future<CovidModel> fetchCovidList() async {
          try {
            Response response = await _dio.get(_url);
            return CovidModel.fromJson(response.data);
          } catch(error, stacktrace) {
              print('Exception occured: $error stackTrace: $stacktrace');
            return CovidModel.withErrors('Data not found/ Connection issue');
          }
    }


}