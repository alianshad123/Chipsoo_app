import 'package:chipsoo_app/contollers/navigation_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WebNavBar extends StatelessWidget {
  final navController = Get.find<NavigationController>();

  final List<String> tabs = ['Home', 'Products', 'About', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(tabs.length, (index) {
        return TextButton(
          onPressed: () => navController.navigateTo(index),
          child: Text(tabs[index]),
        );
      }),
    );
  }
}
