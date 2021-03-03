import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/src/business_logic/services/data/data.dart';
import 'package:travel_app/src/business_logic/utils/appStrings.dart';
import 'package:travel_app/src/business_logic/utils/app_colors.dart';
import 'package:travel_app/src/business_logic/utils/app_textTheme.dart';
import 'package:travel_app/src/business_logic/utils/image_strings.dart';
import 'package:travel_app/src/views/Widgets/blure_container.dart';
import 'package:travel_app/src/views/Widgets/build_attraction.dart';
import 'package:travel_app/src/views/Widgets/build_category_list.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: MyAppColors.myBlueGreyColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 10.0.h,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 4.0.w),
            child: Text("Travel App",
                style: MyAppTextTheme.robotoWhite39BoldStyle),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4.0.w, top: 4.0.w),
              child: RawMaterialButton(
                constraints:
                    BoxConstraints(minWidth: 12.0.sp, minHeight: 25.0.sp),
                onPressed: () {},
                elevation: 2.0,
                fillColor: MyAppColors.mySandColor,
                child: Icon(
                  Icons.settings_outlined,
                  color: MyAppColors.myWhiteColor,
                  size: 16.0.sp,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 100.0.w,
            height: 100.0.h,
            child: Stack(
              children: [
                new Container(
                    child: Image.asset(
                  MyImagesStrings.mountin,
                  fit: BoxFit.cover,
                )),
                Positioned(
                  top: 30.0.h,
                  left: 4.0.w,
                  right: 4.0.w,
                  child: Align(
                      alignment: Alignment.center, child: BlurContainer()),
                ),
                Positioned(
                  top: 39.0.h,
                  child: Container(
                    height: 18.0.h,
                    width: 100.0.w,
                    padding: EdgeInsets.only(top: 3.0.h),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: categoryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 4.0.w,
                          ),
                          child: BuildCatogeryList(
                              context: context,
                              categoryList: categoryList,
                              index: index),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 59.0.h,
                  left: 5.0.w,
                  right: 5.0.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(MyAppStrings.popularAttraction,
                          style: MyAppTextTheme.robotoWhite16BoldStyle),
                      Text(MyAppStrings.seeAll,
                          style: MyAppTextTheme.robotoSand12RegularStyle)
                    ],
                  ),
                ),
                Positioned(
                  top: 62.0.h,
                  child: Container(
                    height: 41.0.h,
                    width: 100.0.w,
                    padding: EdgeInsets.only(top: 3.0.h),
                    child: Container(
                      height: 40.0.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: popularAttList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: 4.0.w,
                            ),
                            child: BuildPopularAttraction(
                                context: context,
                                popularAttList: popularAttList,
                                index: index),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


