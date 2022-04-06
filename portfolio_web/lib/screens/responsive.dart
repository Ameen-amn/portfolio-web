import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  ResponsiveWidget({required this.mobile, required this.desktop});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 650) {
            return mobile;
          } else {
            return desktop;
          }
        },
      ),
    );
  }
}
