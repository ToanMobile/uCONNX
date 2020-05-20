import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
            icon: Entypo.users,
          ),
          IconUCONNX(
            icon: AntDesign.wechat,
          ),
          IconUCONNX(
            icon: FontAwesome.upload,
          ),
          IconUCONNX(
            icon: AntDesign.twitter,
          ),
          IconUCONNX(
            icon: AntDesign.facebook_square,
          ),
          IconUCONNX(
            icon: AntDesign.instagram,
          ),
          IconUCONNX(
            icon: Icons.exit_to_app,
          ),
        ],
      ),
    );
  }
}
