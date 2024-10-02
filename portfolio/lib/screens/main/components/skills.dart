import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text('Skills',
              style: Theme.of(context).textTheme.titleSmall),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.6,
                label: 'Figma',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.45,
                label: 'Firebase',
              ),
            ),
          ],
        ),
      ],
    );
  }
}