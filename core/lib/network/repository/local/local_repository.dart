import 'dart:convert';

import 'package:core/network/model/task.dart';
import 'package:shared/shared.dart';

import '../repository.dart';

class LocalRepository implements Repository {
  @override
  Future<Task> getHome() async {
    var fromCache = await PrefHelper.getCache(AppConstant.HOME);
    if (fromCache != null) {
      Map json = jsonDecode(fromCache);
      return Task.fromJson(json);
    }
    return null;
  }

  Future<bool> saveHome(Task result) {
    return PrefHelper.storeCache(AppConstant.HOME, jsonEncode(result));
  }
}
