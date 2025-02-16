import 'package:flutter/material.dart';
import 'package:moive_app/core/styles.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/custom_list_view_image.dart';

class CatagoriseSugestedMovies extends StatelessWidget {
  const CatagoriseSugestedMovies(
      {super.key, required this.text, required this.category});
  final String text;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppStyle.textStyle18,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See all',
                style: AppStyle.textStyle10,
              ),
            ),
          ],
        ),
        SizedBox(height: 200, child: CustomListViewIImage()),
      ],
    );
  }
}
