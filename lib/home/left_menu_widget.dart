import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
            icon: Icons.error,
          ),
          IconUCONNX(
            icon: FontAwesome.wechat,
          ),
          IconUCONNX(
            icon: AntDesign.like1,
          ),
          IconUCONNX(
            icon: AntDesign.eye,
          ),
          IconUCONNX(
            icon: AntDesign.shoppingcart,
          ),
          IconUCONNX(
            icon: MaterialCommunityIcons.cast_education,
          ),
          IconUCONNX(
            icon: FontAwesome.money,
          ),
          IconUCONNX(
            icon: Entypo.bug,
          ),
          IconUCONNX(
            icon: MaterialCommunityIcons.heart_pulse,
          ),
        ],
      ),
    );
  }
}
