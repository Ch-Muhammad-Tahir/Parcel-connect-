import 'package:flutter/material.dart';
import 'package:fyp_project/providers/on_boarding_provider.dart';
import 'package:fyp_project/views/home_page/home_screen.dart';

import 'package:fyp_project/views/send_parcel_screen/send_parcel_screen.dart';
import 'package:fyp_project/views/send_parcel_screen/sender_details.dart';
import 'package:fyp_project/views/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'views/send_parcel_screen/check_out_parcel_screen.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<OnBoardingProvider>(
            create: (context) => OnBoardingProvider()),
      ],
      child: MaterialApp(
        home: HomePageScreenWidget(),
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


