import 'package:flutter/material.dart';
import 'package:fyp_project/utils/app_assets.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/views/home_page/home_screen.dart';
import 'package:fyp_project/widgets/custom_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              AppAssets.loginScreenIcon,
              height: screenSize * 0.7,
              width: screenSize * 0.7,
            ),
            IntlPhoneField(
              dropdownIconPosition: IconPosition.trailing,
              focusNode: focusNode,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
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
            CustomTextButton(
                padding: EdgeInsets.symmetric(
                    vertical: GetScreenSize.getScreenWidth(context) * 0.03),
                width: GetScreenSize.getScreenWidth(context) * 0.5,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageScreenWidget()));
                  }
                },
                buttonText: "Login",
                buttonColor: Colors.blue,
                radius: 10,
                fontSize: GetScreenSize.getScreenWidth(context) * 0.06)
          ]),
        ),
      ),
    ));
  }
}
