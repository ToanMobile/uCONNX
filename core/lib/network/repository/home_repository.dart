import 'package:core/network/model/task.dart';
import 'package:core/network/network.dart';
import 'package:flutter/cupertino.dart';

class HomeRepository implements Repository {
  final ApiRepository apiRepository;
  final LocalRepository localRepository;

  static final HomeRepository _singleton = HomeRepository._internal(apiRepository: ApiRepository(), localRepository: LocalRepository());

  factory HomeRepository() {
    return _singleton;
  }

  HomeRepository._internal({@required this.apiRepository, @required this.localRepository});

  @override
  Future<Task> getHome() async {
    try {
      var fromLocal = await localRepository.getHome();
      if (fromLocal != null) {
        return fromLocal;
      } else {
        throw Exception();
      }
    } catch (_) {
      final data = await apiRepository.getHome();
      localRepository.saveHome(data);
      return data;
    }
  }
}
