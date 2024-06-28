import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive_edu.dart';

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
        const EduResponsive(
          desktop:
              EducationListInfo(padValue1: 10, padValue2: 200, padValue3: 400),
          desktop1M:
              EducationListInfo(padValue1: 10, padValue2: 150, padValue3: 350),
          desktop2M:
              EducationListInfo(padValue1: 10, padValue2: 100, padValue3: 250),
          tablet1M:
              EducationListInfo(padValue1: 10, padValue2: 80, padValue3: 170),
          tablet:
              EducationListInfo(padValue1: 10, padValue2: 150, padValue3: 350),
          tablet11M:
              EducationListInfo(padValue1: 10, padValue2: 80, padValue3: 170),
          mobileLarge:
              EducationListInfo(padValue1: 10, padValue2: 10, padValue3: 10),
          mobileLarge1M: Column(
            children: [
              HoverContainer(
                title: 'BE - Computer Science Engineering',
                institute:
                    'Government College of Engineering Srirangam, Trichy\nPresent',
                percentage: '80%',
                width: 450,
              ),
              SizedBox(height: defaultPadding),
              HoverContainer(
                title: 'HSC - Higher Secondary School Certificate',
                institute: 'Infant Jesus Matric Hr Sec School, Tirupur\n2021',
                percentage: '92%',
                width: 450,
              ),
              SizedBox(height: defaultPadding),
              HoverContainer(
                title: 'SSLC - Secondary School Leaving Certificate',
                institute: "St. Joseph's Matric Hr Sec School, Tirupur\n2019",
                percentage: '93%',
                width: 450,
              ),
            ],
          ),
          mobile: Column(
            children: [
              HoverContainer(
                title: 'BE - Computer Science Engineering',
                institute:
                    'Government College of Engineering Srirangam, Trichy\nPresent',
                percentage: '80%',
                width: 350,
              ),
              SizedBox(height: defaultPadding),
              HoverContainer(
                title: 'HSC - Higher Secondary School Certificate',
                institute: 'Infant Jesus Matric Hr Sec School, Tirupur\n2021',
                percentage: '92%',
                width: 350,
              ),
              SizedBox(height: defaultPadding),
              HoverContainer(
                title: 'SSLC - Secondary School Leaving Certificate',
                institute: "St. Joseph's Matric Hr Sec School, Tirupur\n2019",
                percentage: '93%',
                width: 350,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HoverContainer extends StatefulWidget {
  const HoverContainer(
      {super.key,
      required this.title,
      required this.institute,
      required this.percentage,
      required this.width});

  final String title;
  final String institute;
  final String percentage;
  final double width;

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        transform: Matrix4.identity()..scale(_isHovered ? 1.008 : 1.0),
        decoration: BoxDecoration(
          color: secondaryColor,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                      color: Colors.white, blurRadius: 10, spreadRadius: 2)
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: defaultPadding),
              Text(widget.institute),
              Text(
                widget.percentage,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

class EducationListInfo extends StatelessWidget {
  const EducationListInfo({
    super.key,
    required this.padValue1,
    required this.padValue2,
    required this.padValue3,
  });

  final double padValue1;
  final double padValue2;
  final double padValue3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: padValue1),
          child: EducationList(
            heading: 'BE - Computer Science Engineering',
            institute:
                'Government College of Engineering Srirangam, Trichy\nPresent',
            percentage: '80%',
          ),
        ),
        SizedBox(height: defaultPadding),
        Padding(
          padding: EdgeInsets.only(left: padValue2),
          child: EducationList(
            heading: 'HSC - Higher Secondary School Certificate',
            institute: 'Infant Jesus Matric Hr Sec School, Tirupur\n2021',
            percentage: '92%',
          ),
        ),
        SizedBox(height: defaultPadding),
        Padding(
          padding: EdgeInsets.only(left: padValue3),
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
                        color: Colors.white,
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
