import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                  const AreaInfoText(
                    title: 'Residence',
                    text: 'Tamilnadu',
                  ),
                  const AreaInfoText(
                    title: 'City',
                    text: 'Tenkasi',
                  ),
                  const AreaInfoText(
                    title: 'Age',
                    text: '20',
                  ),
                  const Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'DOWNLOAD CV',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset('assets/icons/download.svg')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0XEE24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/github.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/twitter.svg'),
                        ),
                        Spacer(),
                      ],
                    ),
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
