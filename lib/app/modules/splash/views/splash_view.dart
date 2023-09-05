import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';
import 'package:selasih_launch/app/theme/font_theme.dart';
import 'package:selasih_launch/app/widget/gradienttext_widget.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        initState: (state) {
          final SplashController ctrl = Get.find();
          ctrl.splashController = AnimationController(
              duration: const Duration(seconds: 2), vsync: this)
            ..forward();
          ctrl.splashAnimation = CurvedAnimation(
              parent: ctrl.splashController, curve: Curves.easeIn);

          ctrl.splashAnimation.addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              ctrl.redirect();
            }
          });
        },
        builder: (_) => Scaffold(
              body: Container(
                  height: 1.sh,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeTransition(
                        opacity: _.splashAnimation,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 30.w,
                                ),
                                Image.asset(
                                  'assets/logo/logo-selasih.png',
                                  width: 200.w,
                                  height: 200.w,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GradientTextWidget(
                                    text: 'Selasih',
                                    textStyle: FontTheme.bold.copyWith(
                                      fontSize: 140.sp,
                                    )),
                                Text(
                                  'Perpustakaan Masa Depan',
                                  style: FontTheme.semiBold.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: ClrTheme.clrPrimary,
                                    fontSize: 38.sp,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ));
  }
}
