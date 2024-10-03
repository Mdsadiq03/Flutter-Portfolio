import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

// class AnimatedCounter extends StatelessWidget {
//   const AnimatedCounter({
//     super.key,
//     required this.value,
//     this.text,
//   });

//   final int value;
//   final String? text;

//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       tween: IntTween(begin: 0, end: value),
//       duration: defaultDuration,
//       builder: (context, value, child) => Text(
//         '$value$text',
//         style: Theme.of(context)
//             .textTheme
//             .headlineSmall!
//             .copyWith(color: primaryColor),
//       ),
//     );
//   }
// }

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key,
    required this.value,
    this.text,
  });

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    // Get the screen width to adjust the font size conditionally
    double screenWidth = MediaQuery.of(context).size.width;

    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, int value, child) => Text(
        '$value$text',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: primaryColor,
              // Adjust font size based on screen width
              fontSize: screenWidth <= 520 ? 18 : 22, // Reduce font size for smaller screens
            ),
      ),
    );
  }
}