import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:fyp_project/providers/on_boarding_provider.dart';
import 'package:fyp_project/providers/send_parcel_provide.dart';
import 'package:fyp_project/views/home_page/nav_bar_screens.dart';

import 'package:fyp_project/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<OnBoardingProvider>(
            create: (context) => OnBoardingProvider()),
        ChangeNotifierProvider<SendParcelProvider>(
            create: (context) => SendParcelProvider()),
      ],
      child: const MaterialApp(
        home: BottomNavBarScreenWidgets(),
      ),
    ),
  );
}




// void main(List<String> args) {
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider<OnBoardingProvider>(
//           create: (context) => OnBoardingProvider()),
//     ],
//     child: DevicePreview(
//       builder: (BuildContext context) => MaterialApp(
//         useInheritedMediaQuery: true,
//         locale: DevicePreview.locale(context),
//         builder: DevicePreview.appBuilder,
//         home: LoginScreenWidget(),
//       ),
//     ),
//   ));
// }


