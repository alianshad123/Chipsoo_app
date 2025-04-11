import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void navigateTo(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.toNamed('/');
        break;
      case 1:
        Get.toNamed('/products');
        break;
    }
  }
}