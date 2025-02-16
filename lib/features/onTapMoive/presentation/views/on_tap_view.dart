import 'package:flutter/material.dart';
import 'package:moive_app/features/onTapMoive/presentation/views/widgets/on_tap_view_body.dart';

class OnTapView extends StatelessWidget {
  const OnTapView({
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
    return Scaffold(
      body: OnTapViewBody(
        imageUrl: imageUrl,
        originalTitle: originalTitle,
        overview: overview,
        releaseDate: releaseDate,
      ),
    );
  }
}
