import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyCertificates extends StatefulWidget {
  const MyCertificates({
    super.key,
  });

  @override
  State<MyCertificates> createState() => _MyCertificatesState();
}

class _MyCertificatesState extends State<MyCertificates> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding),
        Text(
          'Certificates',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: defaultPadding),
        GestureDetector(
          onHorizontalDragStart: _onHorizontalDragStart,
          onHorizontalDragUpdate: _onHorizontalDragUpdate,
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: const Row(
              children: [
                AddCertificate(image: 'assets/certi/flutter.jpg'),
                SizedBox(width: defaultPadding),
                AddCertificate(image: 'assets/certi/nndl.png'),
                SizedBox(width: defaultPadding),
                AddCertificate(image: 'assets/certi/ml.jpg'),
                SizedBox(width: defaultPadding),
                AddCertificate(image: 'assets/certi/aitool.jpg'),
                SizedBox(width: defaultPadding),
                AddCertificate(image: 'assets/certi/tableau.jpg'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class AddCertificate extends StatefulWidget {
  const AddCertificate({
    super.key,
    required this.image,
  });

  final String image;

  @override
  State<AddCertificate> createState() => _AddCertificateState();
}

class _AddCertificateState extends State<AddCertificate> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 400,
          height: 270,
          decoration: BoxDecoration(
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: Opacity(
            opacity: 0.8, // Set the desired opacity value here
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
