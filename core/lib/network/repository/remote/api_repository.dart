import 'package:core/network/api/rest_client.dart';
import 'package:core/network/model/task.dart';
import 'package:dio/dio.dart';

import '../repository.dart';

class ApiRepository implements Repository {

  Dio _dio;
  RestClient _restClient;

  ApiRepository() {
    _dio = Dio();
    _restClient = RestClient(_dio);
  }

  @override
  Future<Task> getHome() {
    return _restClient.getHome('apiKey', 'language');
  }


}