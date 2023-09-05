import 'package:flutter/material.dart';
import 'package:flutter_barcode_listener/flutter_barcode_listener.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:selasih_launch/app/routes/app_pages.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';
import 'package:selasih_launch/app/theme/font_theme.dart';
import 'package:selasih_launch/app/widget/bottomnavbar_widget.dart';
import 'package:selasih_launch/app/widget/headerlogo_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BarcodeKeyboardListener(
      onBarcodeScanned: (p0) {
        Get.toNamed(Routes.LAUNCHSUCCESS);
      },
      child: Container(
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
              children: [HeaderWidget(), BottomNavbarWidget()],
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(75.w),
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
                    Lottie.asset('assets/lottie/lottie-qrcode.json',
                        height: 380.w, width: 380.w),
                    Text(
                      'Scan QR Code',
                      style: FontTheme.bold.copyWith(fontSize: 35.sp),
                    ),
                    SizedBox(
                      height: 16.w,
                    ),
                    Text(
                      'Silakan scan barcode yang ada pada Mobile\nApp ke arah pemindai KiosK',
                      style:
                          FontTheme.base.copyWith(fontSize: 24.sp, height: 1.5),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
