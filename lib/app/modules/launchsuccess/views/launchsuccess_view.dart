import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';
import 'package:selasih_launch/app/theme/font_theme.dart';
import 'package:selasih_launch/app/widget/bottomnavbar_widget.dart';
import 'package:selasih_launch/app/widget/gradienttext_widget.dart';
import 'package:selasih_launch/app/widget/headerlogo_widget.dart';

import '../controllers/launchsuccess_controller.dart';

class LaunchsuccessView extends GetView<LaunchsuccessController> {
  const LaunchsuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LaunchsuccessController>(
      builder: (controller) => Scaffold(
          body: Container(
        margin: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
        width: 1.sw,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            color: ClrTheme.clrWhite,
            image: const DecorationImage(
                image: AssetImage(
                  'assets/bg/pattern-gray.png',
                ),
                fit: BoxFit.cover,
                opacity: 0.5)),
        child: Stack(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderWidget(
                  showBack: true,
                ),
                BottomNavbarWidget()
              ],
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -200.w,
                    left: -200.w,
                    child: Lottie.asset('assets/lottie/lottie-conventie.json',
                        height: 400.w, width: 400.w),
                  ),
                  Positioned(
                    bottom: -200.w,
                    right: -200.w,
                    child: Lottie.asset('assets/lottie/lottie-conventie.json',
                        height: 400.w, width: 400.w),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120.w, vertical: 75.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        color: ClrTheme.clrWhite,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            blurRadius: 10.w,
                            spreadRadius: 4.w,
                            color: Colors.black.withOpacity(0.04),
                          )
                        ]),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GradientTextWidget(
                          text: 'Selamat!',
                          textStyle:
                              FontTheme.semiBold.copyWith(fontSize: 96.sp),
                        ),
                        SizedBox(
                          height: 20.w,
                        ),
                        Lottie.asset('assets/lottie/lottie-badge.json',
                            height: 380.w, width: 380.w),
                        SizedBox(
                          height: 20.w,
                        ),
                        Text(
                          'Selasih telah diresmikan!',
                          style: FontTheme.bold.copyWith(fontSize: 35.sp),
                        ),
                        SizedBox(
                          height: 16.w,
                        ),
                        Text(
                          'Mari hidupkan budaya literasi',
                          style: FontTheme.base
                              .copyWith(fontSize: 24.sp, height: 1.5),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
