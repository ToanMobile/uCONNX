import 'package:core/network/model/task.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'api_constant.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiConstant.dev ? ApiConstant.baseUrlDev : ApiConstant.baseUrlPro)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("demo")
  Future<Task> getHome(@Query("api_key") String apiKey, @Query("language") String language);
}
