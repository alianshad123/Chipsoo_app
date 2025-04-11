import 'package:chipsoo_app/widgets/mobile_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class MobileHomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text("Chipsoo"),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: MobileDrawer(),
      body: Column(
        children: [
          Image.asset('assets/images/header_img.png'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/products');
            },
            child: Text('Go to Home Details (Products)'),
          ),
        ],
      ),
    );
  }
}