import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/src/business_logic/models/category.dart';
import 'package:travel_app/src/business_logic/utils/app_colors.dart';

class BuildCatogeryList extends StatelessWidget {
  const BuildCatogeryList({
    Key key,
    @required this.context,
    @required this.categoryList,
    @required this.index,
  }) : super(key: key);

  final BuildContext context;
  final List<Category> categoryList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1.0.w),
      width: 25.0.w,
      height: 18.0.h,
      decoration: BoxDecoration(
        color: MyAppColors.myBlackColor,
        borderRadius: BorderRadius.circular(10.0.sp),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 4.0.w,
            top: 8.0.w,
            child: Container(
              child: SvgPicture.asset(
                categoryList[index].imageUrl,
                color: Colors.cyanAccent.withOpacity(0.7),
                width: 5.0.w,
                height: 7.0.w,
              ),
            ),
          ),
          Positioned(
            left: 4.0.w,
            bottom: 4.0.w,
            child: Text(
              categoryList[index].name,
              style: TextStyle(
                  color: MyAppColors.myWhiteColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
