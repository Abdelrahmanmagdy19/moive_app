import 'package:flutter/material.dart';

class ImageOnTap extends StatelessWidget {
  const ImageOnTap({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 300,
            child: Image.network(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            )),
        Positioned(
          top: 40,
          left: 10,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withValues(alpha: 0.2),
              ),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_rounded))),
        ),
      ],
    );
  }
}
