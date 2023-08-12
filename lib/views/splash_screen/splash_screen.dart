import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp_project/views/home_page/home_screen.dart';

import '../../utils/app_assets.dart';
import '../on_boarding_screen/onboarding_main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const OnBoardingMainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(child: Image.asset(AppAssets.splashIcon)));
  }
}
