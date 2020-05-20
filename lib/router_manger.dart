import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'login/login_page.dart';
import 'home/home_page.dart';

class RouteName {
  static const String home = '/';
  static const String login = 'login';
  static const String register = 'register';
  static const String setting = 'setting';
}

//SlideTopRouteBuilder
//CupertinoPageRoute

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return FadeRouteBuilder(LoginPage());
      case RouteName.register:
        return FadeRouteBuilder(LoginPage());
      case RouteName.home:
        return FadeRouteBuilder(HomePage());
      default:
        return CupertinoPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}
