import 'dart:convert';
import 'package:chipsoo_app/models/snack_packet_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class SnackPacketController extends GetxController {
  RxList<SnackPacket> packets = <SnackPacket>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadPackets();
  }

  Future<void> loadPackets() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/data/packets.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      packets.value = jsonData.map((e) => SnackPacket.fromJson(e)).toList();
    } catch (e) {
      Get.snackbar('Error', 'Failed to load snack packets');
    }
  }
}
