import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
    required this.children,
    this.scrollController, // Allow scroll controller to be passed as an argument
  }) : super(key: key);

  final List<Widget> children;
  final ScrollController? scrollController; // Optional scroll controller

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController _scrollController; // Initialize it later

  @override
  void initState() {
    super.initState();
    // Use the provided ScrollController if available, otherwise create one
    _scrollController = widget.scrollController ?? ScrollController();
  }

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
                  icon: const Icon(Icons.menu),
                ),
              )),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: GestureDetector(
                  onVerticalDragUpdate: _onVerticalDragUpdate,
                  child: SingleChildScrollView(
                    controller: _scrollController, // Assign the controller
                    child: Column(
                      children: [...widget.children],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.scrollController == null) {
      // Dispose only if this widget owns the ScrollController
      _scrollController.dispose();
    }
    super.dispose();
  }
}
