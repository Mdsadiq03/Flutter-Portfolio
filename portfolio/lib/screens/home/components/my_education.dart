import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Education',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              color: secondaryColor,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BE - Computer Science Engineering',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text('Government College Of Engineering Srirangam, Trichy'),
                ],
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: secondaryColor,
              child: Text('80%',style: TextStyle(color: primaryColor),),
            ),
          ],
        ),
      ],
    );
  }
}
