import 'package:chipsoo_app/contollers/navigation_contoller.dart';
import 'package:chipsoo_app/modules/home_page.dart';
import 'package:chipsoo_app/modules/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(() {
        Get.put(NavigationController());
      }),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/products', page: () => ProductPage()),
      ],
    );
  }
}
