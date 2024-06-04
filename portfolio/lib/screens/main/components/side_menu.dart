import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/area_info_text.dart';
import 'package:portfolio/screens/main/components/coding.dart';
import 'package:portfolio/screens/main/components/knowlwdges.dart';
import 'package:portfolio/screens/main/components/my_info.dart';
import 'package:portfolio/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
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
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


