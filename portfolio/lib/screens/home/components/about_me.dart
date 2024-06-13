import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ScoopOnMe extends StatelessWidget {
  const ScoopOnMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "Enthusiastic Flutter Developer driven by a passion for crafting seamless mobile experiences. Equipped with a solid foundation in programming and dedicated to mastering Dart & Flutter for cross-platform app development. Excited by Flutter's widget-based architecture and committed to refining skills through continuous learning. Actively seeking collaborative opportunities within the vibrant Flutter developer community.",
                  style: TextStyle(fontSize: 16),
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
          ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}