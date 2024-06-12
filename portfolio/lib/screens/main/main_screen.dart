import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    _scrollController.position.moveTo(
      _scrollController.position.pixels - details.delta.dy,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(
                width: defaultPadding ,
              ),
              Expanded(
                flex: 7,
                child: GestureDetector(
                  onVerticalDragUpdate: _onVerticalDragUpdate,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [...widget.children],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: defaultPadding ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
