import 'package:get/get.dart';
import '../controllers/snack_packet_controller.dart';

class SnackPacketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnackPacketController>(() => SnackPacketController());
  }
}
