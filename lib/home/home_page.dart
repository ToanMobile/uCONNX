import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:uCONNX/home/left_menu_widget.dart';
import 'package:uCONNX/home/player_widget.dart';
import 'package:uCONNX/home/right_menu_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Row(
        children: [
          LeftMenu(),
          Expanded(
            flex: 1,
            child: MainPlayer(),
          ),
          RightMenu(),
        ],
      ),
    );
  }
}
