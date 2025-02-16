import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moive_app/core/go_router.dart';

class SplashViewsBody extends StatefulWidget {
  const SplashViewsBody({super.key});

  @override
  State<SplashViewsBody> createState() => _SplashViewsBodyState();
}

class _SplashViewsBodyState extends State<SplashViewsBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    textAinmation();
    goToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: const Center(
        child: Text(
          'MoiveTime',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void textAinmation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void goToHomePage() {
    Future.delayed(
        const Duration(seconds: 3),
        // ignore: use_build_context_synchronously
        () => GoRouter.of(context).push(AppRouter.homeView));
  }
}
