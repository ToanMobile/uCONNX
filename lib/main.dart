import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared/generated/l10n.dart';
import 'package:shared/shared.dart';
import 'package:uCONNX/router_manger.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*locale: localeModel.locale,
      */
      localizationsDelegates: const [
        S.delegate,
        //RefreshLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: Router.generateRoute,
      initialRoute: true ? RouteName.home : RouteName.login,
    );
  }
}
