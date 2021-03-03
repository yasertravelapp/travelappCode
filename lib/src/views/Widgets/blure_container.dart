import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/src/business_logic/utils/appStrings.dart';
import 'package:travel_app/src/business_logic/utils/app_colors.dart';
import 'package:travel_app/src/business_logic/utils/app_textTheme.dart';
import 'package:travel_app/src/business_logic/utils/icons_strings.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          margin: EdgeInsets.all(2.0.sp),
          width: 90.0.w,
          height: 18.0.w,
          decoration: BoxDecoration(
            color: MyAppColors.myWhiteColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.transparent),
          ),
          child: ClipRRect(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black.withOpacity(0.1),
              ),
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 2.0.w, top: 2.0.w),
                  child: SvgPicture.asset(
                    MyIconsStrings.search,
                    fit: BoxFit.cover,
                    color: MyAppColors.myWhiteColor,
                  ),
                ),
                title: TextField(
                  style: MyAppTextTheme.robotoWhite14BoldStyle,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: MyAppStrings.searchFieldHint,
                    hintStyle: MyAppTextTheme.robotoWhite10BoldStyle,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


