import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/utils/app_assets.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/views/home_page/home_screen.dart';
import 'package:fyp_project/widgets/custom_button.dart';
import 'package:fyp_project/widgets/my_custom_text.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../home_page/nav_bar_screens.dart';
import '../traveler_screens/login_screen/traveler_login_screen.dart';

class LoginScreenWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String phoneNumber = "";
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var screenSize = GetScreenSize.getScreenWidth(context);
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize * 0.07,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/images/login.png",
              height: screenSize * 0.5,
              width: screenSize * 0.5,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 40,
            ),
            IntlPhoneField(
              dropdownIconPosition: IconPosition.trailing,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: "Enter your Phone Number",
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (phone) {
                if (phone == null) {
                  return "Empty Number";
                } else {
                  try {
                    if (phone.isValidNumber()) {
                      phoneNumber = phone.completeNumber;
                      return null; // No validation error
                    }
                  } on NumberTooShortException {
                    return "Phone Number is too short";
                  }
                }
              },
              initialCountryCode: "92",
              onChanged: (phone) {
                //print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextButton(
                padding: EdgeInsets.symmetric(
                    vertical: GetScreenSize.getScreenWidth(context) * 0.03),
                width: GetScreenSize.getScreenWidth(context) * 0.5,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavBarScreenWidgets()));
                  }
                },
                buttonText: "Login",
                buttonColor: Colors.blue,
                radius: 10,
                fontSize: GetScreenSize.getScreenWidth(context) * 0.06),
            const SizedBox(
              height: 70,
            ),
            RichText(
              text: TextSpan(
                  text: 'Are you traveler? ',
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign In',
                        style: const TextStyle(
                            color: Colors.blueAccent, fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TravelerLoginScreen()));
                            // navigate to desired screen
                          }),
                    TextSpan(
                      text: ' here.',
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    ));
  }
}
