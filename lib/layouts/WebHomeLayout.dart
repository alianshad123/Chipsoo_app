import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/web_navbar.dart';

class WebHomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text("Chipsoo"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: WebNavBar(),
        ),
      ),
      body: Column(
        children: [
          Image.network('https://via.placeholder.com/1200x300.png?text=Banner'),
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