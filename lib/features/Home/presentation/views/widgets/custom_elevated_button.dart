import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moive_app/core/constanst.dart';
import 'package:moive_app/core/go_router.dart';

class CustomElevatedButton extends StatelessWidget {
  final String category;

  const CustomElevatedButton({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryButtonColor,
        ),
        onPressed: () {
          GoRouter.of(context).push(AppRouter.moviesView, extra: category);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            category,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
