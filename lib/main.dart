import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/providers/on_boarding_provider.dart';
import 'package:fyp_project/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<OnBoardingProvier>(
          create: (context) => OnBoardingProvier()),
    ],
    child: DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: SplashScreen(),
      ),
    ),
  ));
}
