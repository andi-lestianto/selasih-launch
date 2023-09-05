import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';
import 'package:selasih_launch/app/theme/font_theme.dart';
import 'package:selasih_launch/app/widget/gradienttext_widget.dart';

class HeaderWidget extends StatelessWidget {
  final bool showBack;
  const HeaderWidget({super.key, this.showBack = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(48.w),
      child: Row(
        mainAxisAlignment:
            showBack ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (showBack)
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.only(top: 18.w),
                child: Transform.flip(
                  flipX: true,
                  child: SvgPicture.asset('assets/icon/ic-arrow.svg',
                      width: 80.w,
                      colorFilter: ColorFilter.mode(
                          ClrTheme.clrPrimary, BlendMode.srcIn)),
                ),
              ),
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 18.w),
                child: Image.asset(
                  'assets/logo/logo-selasih-small.png',
                  height: 80.w,
                  width: 80.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                children: [
                  GradientTextWidget(
                    text: 'Selasih',
                    textStyle: FontTheme.bold.copyWith(fontSize: 60.sp),
                  ),
                  GradientTextWidget(
                    text: 'Perpustakaan Masa Depan',
                    textStyle: FontTheme.base.copyWith(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
