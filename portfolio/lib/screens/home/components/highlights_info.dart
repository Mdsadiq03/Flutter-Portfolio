import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/home/components/hight_light.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'Subscribers',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'Videos',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'GitHub Projects',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 100,
              text: '+',
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}