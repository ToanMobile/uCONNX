import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class IconUCONNX extends StatelessWidget {
  final IconData icon;

  IconUCONNX({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Icon(
        icon,
        size: 100.h,
        color: ColorsUtils.white,
      ),
    );
  }
}
