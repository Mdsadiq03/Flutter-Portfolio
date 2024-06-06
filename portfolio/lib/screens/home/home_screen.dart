
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
      ],
    );
  }
}


