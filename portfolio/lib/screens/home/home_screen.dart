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
  final ScrollController _scrollController = ScrollController();

  HomeScreen({super.key});

  void _scrollToHighlights() {
    _scrollController.animateTo(
      400.0, // Adjust this value based on where the "HighlightsInfo" section starts
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      scrollController: _scrollController, // Pass the scroll controller
      children: [
        HomeBanner(onExplorePressed: _scrollToHighlights), // Pass callback
        HighlightsInfo(),
        ScoopOnMe(),
        MyProject(),
        MyEducation(),
        MyCertificates(),
        Recommendations(),
        const CopyRight(),
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

