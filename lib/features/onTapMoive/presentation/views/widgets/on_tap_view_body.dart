import 'package:flutter/material.dart';
import 'package:moive_app/core/styles.dart';
import 'package:moive_app/features/onTapMoive/presentation/views/widgets/cutom_tow_button.dart';
import 'package:moive_app/features/onTapMoive/presentation/views/widgets/image_on_tap.dart';
import 'package:moive_app/features/onTapMoive/presentation/views/widgets/moive_downlod_container.dart';

class OnTapViewBody extends StatelessWidget {
  const OnTapViewBody(
      {super.key,
      required this.imageUrl,
      required this.originalTitle,
      required this.overview,
      required this.releaseDate});

  final String imageUrl;
  final String originalTitle;
  final String overview;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageOnTap(imageUrl: imageUrl),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Text(
                  originalTitle,
                  style: AppStyle.textStyle25,
                ),
                Text(
                  releaseDate,
                  style: AppStyle.textStyle18
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 25),
                CustomTowButtonOnTapImage(),
                SizedBox(height: 25),
                Text(
                  overview,
                  style: AppStyle.textStyle10,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                MoiveDownlodContainer(
                  imageUrl: imageUrl,
                  originalTitle: originalTitle,
                  overview: overview,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
