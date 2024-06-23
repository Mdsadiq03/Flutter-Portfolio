import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/project_card.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MyProject extends StatefulWidget {
  const MyProject({
    super.key,
  });

  @override
  _MyProjectState createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> with TickerProviderStateMixin {
  bool _isVisible = false;
  List<int> _visibleIndexes = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          VisibilityDetector(
            key: Key('my-projects'),
            onVisibilityChanged: (VisibilityInfo info) {
              if (info.visibleFraction > 0.5 && !_isVisible) {
                setState(() {
                  _isVisible = true;
                });
                _addProjects();
              }
            },
            child: Responsive(
              mobile: ProjectGridView(
                crossAxisCount: 1,
                childAspectRatio: 2,
                visibleIndexes: _visibleIndexes,
              ),
              mobileLarge: ProjectGridView(
                crossAxisCount: 2,
                visibleIndexes: _visibleIndexes,
              ),
              desktop: ProjectGridView(
                visibleIndexes: _visibleIndexes,
              ),
              tablet: ProjectGridView(
                childAspectRatio: 1,
                visibleIndexes: _visibleIndexes,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addProjects() {
    for (int i = 0; i < demo_projects.length; i++) {
      Future.delayed(Duration(milliseconds: 300 * i), () {
        setState(() {
          _visibleIndexes.add(i);
        });
      });
    }
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    required this.visibleIndexes,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.2,
  });

  final List<int> visibleIndexes;
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        bool isVisible = visibleIndexes.contains(index);
        return AnimatedSlide(
          offset: isVisible ? Offset(0, 0) : Offset(0, 1),
          duration: const Duration(milliseconds: 500),
          child: AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: ProjectCard(
              project: demo_projects[index],
            ),
          ),
        );
      },
    );
  }
}
