import 'package:flutter/material.dart';
import 'package:moive_app/core/styles.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/catagorise_sugested_movies.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/custom_ist_view_button.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/custom_list_view_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          children: const [
            CustomListViewIImage(),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Catagorise', style: AppStyle.textStyle18),
                  SizedBox(height: 20),
                  CutomListVewButton(),
                  SizedBox(height: 15),
                  CatagoriseSugestedMovies(
                    text: 'Most Popular',
                    category: 'most-popular-movies',
                  ),
                  CatagoriseSugestedMovies(
                    text: 'Last Moive',
                    category: 'top-box-office',
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
