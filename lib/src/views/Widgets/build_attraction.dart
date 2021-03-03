import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:sizer/sizer.dart';

import 'package:travel_app/src/business_logic/models/popular_attraction.dart';

import 'package:travel_app/src/business_logic/utils/app_colors.dart';
import 'package:travel_app/src/business_logic/utils/app_textTheme.dart';
import 'package:travel_app/src/business_logic/utils/icons_strings.dart';

class BuildPopularAttraction extends StatelessWidget {
  const BuildPopularAttraction({
    Key key,
    @required this.context,
    @required this.popularAttList,
    @required this.index,
  }) : super(key: key);

  final BuildContext context;
  final List<PopularAttraction> popularAttList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(1.0.w),
            width: 60.0.w,
            height: 18.0.h,
            decoration: BoxDecoration(
              //color: MyAppColors.myBlackColor,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.grey.withOpacity(0.7), Colors.black]),
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                image: AssetImage(
                  popularAttList[index].imageUrl,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0.sp),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 4.0.w, bottom: 4.0.w),
                child: Text(
                  popularAttList[index].name,
                  style: TextStyle(
                      color: MyAppColors.myWhiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.0.w, top: 2.0.w),
            child: Container(
              width: 60.0.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20.0.w,
                    height: 10.0.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.darken),
                          image:
                              AssetImage(popularAttList[index].user.userImage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 4.0.w, top: 2.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Text(popularAttList[index].user.name,
                                style:
                                    MyAppTextTheme.robotoWhite12RegularStyle),
                          ),
                          SizedBox(
                            height: 2.0.w,
                          ),
                          Container(
                            child: Text(popularAttList[index].user.invalidName,
                                style: MyAppTextTheme.robotoWhite8RegularStyle),
                          ),
                          SizedBox(
                            height: 2.0.w,
                          ),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  MyIconsStrings.eye,
                                  color: Colors.cyan.withOpacity(0.6),
                                  fit: BoxFit.cover,
                                  width: 10,
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 1.0.w),
                                  child: Text(popularAttList[index].user.views,
                                      style: MyAppTextTheme
                                          .robotolightGrey18RegularStyle),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.0.w),
                                  child: SvgPicture.asset(
                                    MyIconsStrings.like,
                                    color: Colors.cyan.withOpacity(0.6),
                                    fit: BoxFit.cover,
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 1.0.w),
                                  child: Text(popularAttList[index].user.likes,
                                      style: MyAppTextTheme
                                          .robotolightGrey18RegularStyle),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
