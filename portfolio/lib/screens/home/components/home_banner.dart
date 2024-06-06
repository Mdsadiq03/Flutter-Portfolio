import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
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
                  style:
                      Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                MyBuildAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                    onPressed: () {},
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
                    )),
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
          FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text('I build '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('responsive web and mobile app'),
              TyperAnimatedText('e-Commerce app UI'),
              TyperAnimatedText('chat app with dark and light theme'),
            ],
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
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