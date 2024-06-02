import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/area_info_text.dart';
import 'package:portfolio/screens/main/components/my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: 'Residence',
                    text: 'Tamilnadu',
                  ),
                  AreaInfoText(
                    title: 'City',
                    text: 'Tenkasi',
                  ),
                  AreaInfoText(
                    title: 'Age',
                    text: '20',
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text('Skills',
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.8,
                          label: 'Flutter',
                        ),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.8,
                          label: 'Flutter',
                        ),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                          percentage: 0.8,
                          label: 'Flutter',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




