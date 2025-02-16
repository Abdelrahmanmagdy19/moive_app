import 'package:flutter/material.dart';
import 'package:moive_app/core/constanst.dart';
import 'package:moive_app/core/styles.dart';

class CustomTowButtonOnTapImage extends StatelessWidget {
  const CustomTowButtonOnTapImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                Text(
                  'Play',
                  style: AppStyle.textStyle10
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 25),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryButtonColor,
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.download,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                Text(
                  'Downlod',
                  style: AppStyle.textStyle10
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
