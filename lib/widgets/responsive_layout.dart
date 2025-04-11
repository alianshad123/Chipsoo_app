import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  ResponsiveLayout({required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth > 600) {
          return web;
        } else {
          return mobile;
        }
      },
    );
  }
}
