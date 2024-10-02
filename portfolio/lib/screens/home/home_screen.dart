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
    return const MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        ScoopOnMe(),
        MyProject(),
        MyEducation(),
        MyCertificates(),
        Recommendations(),
        CopyRight(),
        
      ],
    );
  }
}

// CopyRight class implementation
class CopyRight extends StatelessWidget {
  const CopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Copyright © 2024 MohamedSadiq. All Rights Reserved.',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontFamily: 'Roboto', // Replace with your desired font family
          fontWeight: FontWeight.w500, // Optional: Add font weight for emphasis
        ),
        textAlign: TextAlign.center, // Align text to the center
      ),
    );
  }
}

