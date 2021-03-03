import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

abstract class MyAppTextTheme {
  static TextStyle robotoWhite39BoldStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 32.37.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite20BoldStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 20.33.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite16BoldStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 16.26.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite14BoldStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 14.76.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite10BoldStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 10.0.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite8RegularStyle = TextStyle(
    color: MyAppColors.myWhiteColor,
    fontSize: 9.0.sp,
  );

  static TextStyle robotoWhite13RegularStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 13.12.sp,
      fontWeight: FontWeight.bold);
  static TextStyle robotoWhite12RegularStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 12.00.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotoWhite14RegularStyle = TextStyle(
      color: MyAppColors.myWhiteColor,
      fontSize: 11.48.sp,
      fontWeight: FontWeight.bold);

  /// snad colors
  ///
  static TextStyle robotoSand12RegularStyle = TextStyle(
    color: MyAppColors.mySandColor,
    fontSize: 10.0.sp,
  );

  /// grey color
  ///
  static TextStyle robotolightGrey12RegularStyle = TextStyle(
      color: MyAppColors.mylightGreyColor,
      fontSize: 11.48.sp,
      fontWeight: FontWeight.bold);

  static TextStyle robotolightGrey18RegularStyle = TextStyle(
      color: MyAppColors.mylightGreyColor,
      fontSize: 8.0.sp,
      fontWeight: FontWeight.bold);
}
