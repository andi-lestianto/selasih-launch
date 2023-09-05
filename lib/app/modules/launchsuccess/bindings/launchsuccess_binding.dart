import 'package:get/get.dart';

import '../controllers/launchsuccess_controller.dart';

class LaunchsuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaunchsuccessController>(
      () => LaunchsuccessController(),
    );
  }
}
