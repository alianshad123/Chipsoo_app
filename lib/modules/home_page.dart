import 'package:chipsoo_app/layouts/MobileHomeLayout.dart';
import 'package:chipsoo_app/layouts/WebHomeLayout.dart';
import 'package:flutter/material.dart';
import '../widgets/responsive_layout.dart';
import '../widgets/web_navbar.dart';
import '../widgets/mobile_drawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: WebHomeLayout(),
      mobile: MobileHomeLayout(),
    );
  }
}
