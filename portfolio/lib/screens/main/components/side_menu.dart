import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/area_info_text.dart';
import 'package:portfolio/screens/main/components/coding.dart';
import 'package:portfolio/screens/main/components/knowlwdges.dart';
import 'package:portfolio/screens/main/components/my_info.dart';
import 'package:portfolio/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final ScrollController _scrollController = ScrollController();

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    _scrollController.position.moveTo(
      _scrollController.position.pixels - details.delta.dy,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: GestureDetector(
                onVerticalDragUpdate: _onVerticalDragUpdate,
                child: SingleChildScrollView(
                  controller: _scrollController,
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
                      const Link(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Link extends StatelessWidget {
  const Link({
    super.key,
  });

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0XEE24242E),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () => _launchURL('https://www.linkedin.com/in/mohamed-sadiq-m/'),
            icon:
                SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () => _launchURL('https://github.com/Mdsadiq03'),
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () => _launchURL('https://x.com/MohamedSadiq2k3'),
            icon:
                SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
