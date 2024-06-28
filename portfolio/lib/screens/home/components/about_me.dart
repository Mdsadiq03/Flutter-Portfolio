import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ScoopOnMe extends StatefulWidget {
  const ScoopOnMe({super.key});

  @override
  _ScoopOnMeState createState() => _ScoopOnMeState();
}

class _ScoopOnMeState extends State<ScoopOnMe> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 1), // Start from bottom
      end: Offset(0, 0), // End at original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text(
          'The Scoop on Me',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: defaultPadding), // Add spacing between title and content
        Container(
          padding: EdgeInsets.all(20), // Adjust padding as needed
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300]!, // Choose your border color
              width: 1.0, // Adjust border width as needed
            ),
            borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 430) { // Adjust width threshold as needed
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/my_pic.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16), // Add spacing between text and image
                    ClipRect(
                      child: SlideTransition(
                        position: _offsetAnimation,
                        child: Text(
                          "Enthusiastic Flutter Developer driven by a passion for crafting seamless mobile experiences. Equipped with a solid foundation in programming and dedicated to mastering Dart & Flutter for cross-platform app development. Excited by Flutter's widget-based architecture and committed to refining skills through continuous learning. Actively seeking collaborative opportunities within the vibrant Flutter developer community.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center, // Align text to the center
                        ),
                      ),
                    ),
                    
                  ],
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRect(
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: Text(
                            "Enthusiastic Flutter Developer driven by a passion for crafting seamless mobile experiences. Equipped with a solid foundation in programming and dedicated to mastering Dart & Flutter for cross-platform app development. Excited by Flutter's widget-based architecture and committed to refining skills through continuous learning. Actively seeking collaborative opportunities within the vibrant Flutter developer community.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.start, // Align text to the start
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16), // Add spacing between text and image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/my_pic.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
