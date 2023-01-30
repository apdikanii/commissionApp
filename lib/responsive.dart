import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, required this.mobile, 
  required this.tablet, required this.desktop});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
  MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) =>
  MediaQuery.of(context).size.width < 1100 && 
  MediaQuery.of(context).size.width >= 650;
  static bool isDesktop(BuildContext context) =>
  MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if(Constraints.maxWidth >= 1100){
          return desktop;
        }else if (Constraints.maxWidth >=650){
          return tablet;
        }else{
          return mobile;
        }
      },
    );
  }
}