import 'package:chipsoo_app/modules/home/bindings/snack_packet_binding.dart';
import 'package:chipsoo_app/modules/home/home_page.dart';
import 'package:chipsoo_app/modules/products/product_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [

    GetPage(
      name: '/',
      page: () => HomePage(),
      binding: SnackPacketBinding(), // Bind the controller once
    ),
    GetPage(name: '/products', page: () => ProductPage()),
  ];
}