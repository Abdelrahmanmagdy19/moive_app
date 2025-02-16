import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moive_app/core/constanst.dart';
import 'package:moive_app/core/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: 0,
      onTap: (index) {
        if (index == 1) {
          GoRouter.of(context).push(AppRouter.searchView);
        }
      },
      backgroundColor: kSacoundPrimaryColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
      ],
    );
  }
}
