import 'package:get/get.dart';

class AnimatedHoverController extends GetxController {
  var isHovered = false.obs;

  void onHover(bool hover) {
    isHovered.value = hover;
  }
}