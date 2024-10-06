import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/responsive_edu.dart';

class HomeBanner extends StatelessWidget {
  final VoidCallback onExplorePressed; // Add this to handle button click

  const HomeBanner({super.key, required this.onExplorePressed});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (!EduResponsive.isMobile(context))
            Image.asset(
              'assets/images/bg1.jpg',
              fit: BoxFit.fill,
            ),
          if (EduResponsive.isMobile(context))
            Image.asset(
              'assets/images/bg1.jpg',
              fit: BoxFit.cover,
            ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                const MyBuildAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: onExplorePressed, // Scrolls when button is pressed
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text('I built '),
          if (EduResponsive.isMobile(context))
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Shopping list + Firebase Database'),
                TyperAnimatedText('Food delivery app - flutter UI'),
                TyperAnimatedText('Expense Tracker app dark,light theme'),
              ],
            ),
          if (!EduResponsive.isMobile(context))
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                    'Shopping list with Firebase Realtime Database'),
                TyperAnimatedText('Food delivery app shows flutter UI'),
                TyperAnimatedText(
                    'Expense Tracker app, dark and light theme'),
              ],
            ),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(
          text: 'flutter',
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(text: '>'),
      ]),
    );
  }
}
