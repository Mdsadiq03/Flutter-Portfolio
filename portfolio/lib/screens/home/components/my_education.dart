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
        EducationList(
          heading: 'BE - Computer Science Engineering',
          institute: 'Government College of Engineering Srirangam, Trichy\nPresent',
          percentage: '80%',
        ),
        SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.only(left: 200),
          child: EducationList(
            heading: 'HSC - Higher Secondary School Certificate',
            institute: 'Infant Jesus Matric Hr Sec School, Tirupur\n2021',
            percentage: '92%',
          ),
        ),
        SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.only(left: 400),
          child: EducationList(
            heading: 'SSLC - Secondary School Leaving Certificate',
            institute: "St. Joseph's Matric Hr Sec School, Tirupur\n2019",
            percentage: '93%',
          ),
        ),
      ],
    );
  }
}

class EducationList extends StatelessWidget {
  const EducationList({
    super.key,
    required this.heading,
    required this.institute,
    required this.percentage,
  });

  final String heading;
  final String institute;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(institute),
            ],
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: primaryColor,
              width: 4.0,
            ),
          ),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: secondaryColor,
            child: Text(
              percentage,
              style: TextStyle(
                color: primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
