import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(percentage: 0.7, label: 'Dart'),
        const AnimatedLinearProgressIndicator(percentage: 0.6, label: 'Java'),
        const AnimatedLinearProgressIndicator(percentage: 0.5, label: 'HTML'),
        const AnimatedLinearProgressIndicator(percentage: 0.55, label: 'CSS'),
        const AnimatedLinearProgressIndicator(percentage: 0.35, label: 'Javascript'),
      ],
    );
  }
}