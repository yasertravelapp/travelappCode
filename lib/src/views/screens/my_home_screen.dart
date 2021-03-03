import 'package:flutter/material.dart';
import 'package:travel_app/src/business_logic/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/src/business_logic/utils/icons_strings.dart';
import 'package:sizer/sizer.dart';
import 'explore_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final List<Widget> _children = [
      ExploreScreen(),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        body: _children[currentIndex],
        backgroundColor: MyAppColors.myBlueGreyColor,
        bottomNavigationBar: Container(
          height: 11.0.h,
          width: 100.0.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0)),
            child: BottomNavigationBar(
              backgroundColor: MyAppColors.myblackColor,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: MyAppColors.mydarkGreyColor,
              selectedItemColor: MyAppColors.myWhiteColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              currentIndex: currentIndex,
              items: [
                new BottomNavigationBarItem(
                  icon: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      MyIconsStrings.earth,
                      color: MyAppColors.myWhiteColor,
                      width: 3.0.w,
                      height: 3.0.h,
                    ),
                  ),
                  label: "",
                ),
                new BottomNavigationBarItem(
                  icon: Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      MyIconsStrings.time,
                      color: MyAppColors.myGreyColor.withOpacity(0.6),
                      width: 3.0.w,
                      height: 3.0.h,
                    ),
                  ),
                  label: "",
                ),
                new BottomNavigationBarItem(
                  icon: Stack(
                    //alignment: AlignmentDirectional.topCenter,
                    children: [
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: MyAppColors.mylightGreyColor
                                    .withOpacity(0.2),
                                width: 1),
                          ),
                          width: 9.0.h,
                          height: 8.5.h,
                        ),
                      ),
                      Positioned(
                        top: 1.0.w,
                        left: 1.0.w,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:
                                    MyAppColors.myWhiteColor.withOpacity(0.4),
                                width: 1),
                          ),
                          width: 8.0.h,
                          height: 7.5.h,
                        ),
                      ),
                      Positioned(
                          top: 2.0.w,
                          left: 1.0.w,
                          right: 1.0.w,
                          child: RawMaterialButton(
                            constraints:
                                BoxConstraints(minWidth: 15, minHeight: 30),
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: SvgPicture.asset(
                              MyIconsStrings.navBarButton,
                              color: MyAppColors.mySandColor,
                              width: 5.0.w,
                              height: 5.0.w,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                  label: "",
                ),
                new BottomNavigationBarItem(
                  icon: Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      MyIconsStrings.messages,
                      color: MyAppColors.myGreyColor.withOpacity(0.6),
                      width: 3.0.w,
                      height: 3.0.h,
                    ),
                  ),
                  label: "",
                ),
                new BottomNavigationBarItem(
                  icon: Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      MyIconsStrings.profile,
                      color: MyAppColors.myGreyColor.withOpacity(0.6),
                      width: 3.0.w,
                      height: 3.0.h,
                    ),
                  ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
