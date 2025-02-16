import 'package:flutter/material.dart';
import 'package:moive_app/features/Splash/presentation/views/widgets/splash_views_body.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewsBody(),
    );
  }
}
