import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive.isAdjustment1(context)
        ? Column(
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: EducationList(
                  heading: 'BE - Computer Science Engineering',
                  institute:
                      'Government College of Engineering Srirangam, Trichy\nPresent',
                  percentage: '80%',
                ),
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
          )
        : Column(
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: EducationList(
                  heading: 'BE - Computer Science Engineering',
                  institute:
                      'Government College of Engineering Srirangam, Trichy\nPresent',
                  percentage: '80%',
                ),
              ),
              SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: EducationList(
                  heading: 'HSC - Higher Secondary School Certificate',
                  institute: 'Infant Jesus Matric Hr Sec School, Tirupur\n2021',
                  percentage: '92%',
                ),
              ),
              SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.only(left: 10),
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

class EducationList extends StatefulWidget {
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
  _EducationListState createState() => _EducationListState();
}

class _EducationListState extends State<EducationList> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              boxShadow: _isHovered
                  ? [
                      BoxShadow(
                        color: primaryColor,
                        blurRadius: 10.0,
                        offset: Offset(0, 5),
                      )
                    ]
                  : [],
            ),
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.heading,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Text(widget.institute),
              ],
            ),
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.only(left: _isHovered ? 10.0 : 0.0),
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
              widget.percentage,
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
