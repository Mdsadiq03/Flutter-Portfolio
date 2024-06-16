import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/about_me.dart';
import 'package:portfolio/screens/home/components/certificates.dart';
import 'package:portfolio/screens/home/components/highlights_info.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/home/components/my_education.dart';
import 'package:portfolio/screens/home/components/my_projects.dart';
import 'package:portfolio/screens/home/components/my_recommendations.dart';
import 'package:portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        ScoopOnMe(),
        MyProject(),
        MyEducation(),
        MyCertificates(),
        Recommendations(),
      ],
    );
  }
}


