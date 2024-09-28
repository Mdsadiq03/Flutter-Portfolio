import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Recommendation.dart';
import 'package:portfolio/screens/home/components/recommendation_card.dart';

class Recommendations extends StatefulWidget {
  const Recommendations({
    super.key,
  });

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  final ScrollController _scrollController = ScrollController();
  double _initialScrollOffset = 0;
  double _initialPosition = 0;

  void _onHorizontalDragStart(DragStartDetails details) {
    setState(() {
      _initialScrollOffset = _scrollController.offset;
      _initialPosition = details.localPosition.dx;
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    final double delta = details.localPosition.dx - _initialPosition;
    setState(() {
      _scrollController.jumpTo(_initialScrollOffset - delta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hobbies',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          GestureDetector(
            onHorizontalDragStart: _onHorizontalDragStart,
            onHorizontalDragUpdate: _onHorizontalDragUpdate,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demo_recommendations.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(
                      recommendation: demo_recommendations[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


