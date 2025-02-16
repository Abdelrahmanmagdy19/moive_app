import 'package:flutter/material.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/custom_elevated_button.dart';

class CutomListVewButton extends StatelessWidget {
  const CutomListVewButton({super.key});

  final List<String> categories = const ["Action", "Drama", "Comedy", "Sci-Fi"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CustomElevatedButton(category: categories[index]);
        },
      ),
    );
  }
}
