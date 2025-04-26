import 'package:chipsoo_app/modules/home/layouts/MobileHomeLayout.dart';
import 'package:chipsoo_app/modules/home/layouts/WebHomeLayout.dart';
import 'package:flutter/material.dart';
import '../../widgets/responsive_layout.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: WebHomeLayout(),
      mobile: MobileHomeLayout(),
    );
  }
}
