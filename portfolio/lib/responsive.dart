import 'package:flutter/material.dart';

// We will modify it once we have our final design

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;
  final Widget? adjustment;
  final Widget? adjustment2;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge, this.adjustment, this.adjustment2,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 715;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1096;

  static bool isAdjustment1(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1347;    

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1096) {
      return desktop;
    } else if (_size.width >= 731 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 520 && mobileLarge != null) {
      return mobileLarge!;
    } else if (_size.width >= 670){
      return adjustment2!;
    } else if (_size.width >= 1347){
      return adjustment!;
    } 
    else {
      return mobile;
    }
  }
}
