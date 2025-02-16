import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moive_app/core/go_router.dart';

class IMageMovie extends StatelessWidget {
  const IMageMovie({
    super.key,
    required this.imageUrl,
    required this.originalTitle,
    required this.overview,
    required this.releaseDate,
  });

  final String imageUrl;
  final String originalTitle;
  final String overview;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.onTapView,
          extra: {
            'imageUrl': imageUrl,
            'originalTitle': originalTitle,
            'overview': overview,
            'releaseDate': releaseDate,
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: AspectRatio(
          aspectRatio: 4 / 6,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
