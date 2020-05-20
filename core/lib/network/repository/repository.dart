import 'package:core/network/model/task.dart';

abstract class Repository {
  Future<Task> getHome();
  /*Future<Result> getNowPlaying([
    String apiKey = ApiConstant.apiKey,
    String language = ApiConstant.language
  ]);

  Future<Result> getUpComing([
    String apiKey = ApiConstant.apiKey,
    String language = ApiConstant.language
  ]);

  Future<Result> getPopular([
    String apiKey = ApiConstant.apiKey,
    String language = ApiConstant.language
  ]);

  Future<Result> getTopRated([
    String apiKey = ApiConstant.apiKey,
    String language = ApiConstant.language
  ]);*/
}
