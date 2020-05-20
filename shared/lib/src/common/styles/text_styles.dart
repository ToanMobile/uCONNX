import 'dart:ui';
import 'package:flutter/material.dart';
import 'colors.dart';

class TextStylesUtils {
  static const FontCalibriRegular = 'calibri';

  static const styleRegular12BrownGreyW400 = const TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.brownGrey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const styleRegular12WhiteW400 = const TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const styleRegular12PinkishOrangeW600 = const TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.pinkishOrange,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.21428574,
  );

  static const style14W400Black = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const style14Black = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 14,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium18Black = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 18,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium18White = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.white,
    fontSize: 18,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium20Black = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium20TextSelect = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium20White = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.white,
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );

  static const styleRegular20TextSelect = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );

  static const styleMedium30White = TextStyle(
    fontFamily: FontCalibriRegular,
    color: ColorsUtils.white,
    fontSize: 30,
    fontStyle: FontStyle.normal,
  );
}
