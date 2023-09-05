// ignore_for_file: unnecessary_overrides

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  late AnimationController splashController;
  late Animation<double> splashAnimation;

  redirect() async {
    await Future.delayed(const Duration(seconds: 1))
        .then((value) => Get.offAllNamed(Routes.HOME));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
