import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:uCONNX/widget/icon_uconnx.dart';

class LeftMenu extends StatefulWidget {
  @override
  _LeftMenuState createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtils.bg_green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconUCONNX(
            icon: Icons.home,
          ),
          IconUCONNX(
            icon: Icons.message,
          ),
          IconUCONNX(
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
