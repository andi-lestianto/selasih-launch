// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class LaunchsuccessController extends GetxController {
  final player = AudioPlayer();

  initAudio() async {
    await player.setAsset('assets/audio/sanggau-audio.mp3');
    await player.play();
    await player.setVolume(1.0);
  }

  @override
  void onInit() {
    super.onInit();
    initAudio();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() async {
    await player.stop();
    super.onClose();
  }
}
