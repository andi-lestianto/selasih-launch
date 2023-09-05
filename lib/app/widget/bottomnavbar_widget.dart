import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';
import 'package:selasih_launch/app/theme/font_theme.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 48.w),
      decoration: BoxDecoration(
          color: ClrTheme.clrBlack,
          image: const DecorationImage(
              image: AssetImage(
                'assets/bg/bg-pattern-red.png',
              ),
              fit: BoxFit.fitWidth,
              opacity: 0.3)),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.w),
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
                      Text(
                        'Selasih',
                        style: FontTheme.semiBold.copyWith(
                            fontSize: 60.sp, color: ClrTheme.clrWhite),
                      ),
                      Text(
                        'Perpustakaan Masa Depan',
                        style: FontTheme.base.copyWith(
                          color: ClrTheme.clrWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'PT Daya Rekadigital Indonesia',
                      style: FontTheme.base
                          .copyWith(fontSize: 24.sp, color: ClrTheme.clrGray),
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Text(
                      'Ⓒ 2023',
                      style: FontTheme.base.copyWith(
                          fontSize: 16.sp, color: ClrTheme.clrDarkGray),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
