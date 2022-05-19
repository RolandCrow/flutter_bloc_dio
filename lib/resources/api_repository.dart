import 'package:flutter_bloc_dio/models/covid_model.dart';

class ApiRepository {


  final _provider = ApiRepository();

  Future<CovidModel> fetchCovidList() async{
      return _provider.fetchCovidList();
  }

}

class NetworkError extends Error {}


