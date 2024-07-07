import 'package:flutter/material.dart';

class EduResponsive extends StatelessWidget {
  const EduResponsive(
      {super.key,
      this.mobile,
      this.mobileLarge,
      this.tablet,
      this.desktop, this.desktop2M, this.desktop1M, this.tablet1M, this.tablet11M, this.mobileLarge1M});

  final Widget? mobile;
  final Widget? mobileLarge;
  final Widget? mobileLarge1M;
  final Widget? tablet;
  final Widget? tablet1M;
  final Widget? tablet11M;
  final Widget? desktop2M;
  final Widget? desktop1M;
  final Widget? desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1340) return desktop!;
    else if (size.width >= 1275) return desktop1M!;
    else if (size.width >= 1214) return desktop2M!; 
    else if (size.width >= 1097) return tablet1M!;
    else if (size.width >= 1007) return tablet!;
    else if (size.width >= 836) return tablet11M!;
    else if (size.width >= 680) return mobileLarge!;
    else if(size.width >= 516) return mobileLarge1M!;
    else return mobile!;
    
  }
}
