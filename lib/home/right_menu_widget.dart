import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:uCONNX/widget/icon_uconnx.dart';

class RightMenu extends StatefulWidget {
  @override
  _RightMenuState createState() => _RightMenuState();
}

class _RightMenuState extends State<RightMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtils.bg_green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconUCONNX(
            icon: Icons.settings,
          ),
          IconUCONNX(
            icon: Icons.collections_bookmark,
          ),
          IconUCONNX(
            icon: Icons.exit_to_app,
          ),
        ],
      ),
    );
  }
}
