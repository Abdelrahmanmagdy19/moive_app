import 'package:flutter/material.dart';
import 'package:moive_app/core/constanst.dart';
import 'package:moive_app/core/styles.dart';

class MoiveDownlodContainer extends StatelessWidget {
  const MoiveDownlodContainer({
    super.key,
    required this.imageUrl,
    required this.originalTitle,
    required this.overview,
  });

  final String imageUrl;
  final String originalTitle;
  final String overview;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 900,
      decoration: BoxDecoration(
        color: kSacoundPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(imageUrl),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          originalTitle,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyle.textStyle10
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.download),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      overview,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
