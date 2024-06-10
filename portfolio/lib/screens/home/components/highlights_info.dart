import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/hight_light.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
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
                    
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
              ],
            )
          : const Row(
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
