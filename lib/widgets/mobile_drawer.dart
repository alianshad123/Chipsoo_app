import 'package:chipsoo_app/contollers/navigation_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MobileDrawer extends StatelessWidget {
  final navController = Get.find<NavigationController>();
  final List<String> tabs = ['Home', 'Products', 'About', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: tabs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tabs[index]),
            onTap: () {
              Navigator.pop(context);
              navController.navigateTo(index);
            },
          );
        },
      ),
    );
  }
}
