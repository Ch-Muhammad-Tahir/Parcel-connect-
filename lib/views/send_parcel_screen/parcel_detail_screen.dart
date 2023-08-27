import 'package:flutter/material.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/views/send_parcel_screen/sender_details.dart';
import 'package:fyp_project/widgets/custom_button.dart';
import 'package:fyp_project/widgets/custom_sized_box.dart';
import 'package:fyp_project/widgets/my_custom_text.dart';

import '../../widgets/custom_text_field.dart';

class ParcelDetailScreen extends StatelessWidget {
  const ParcelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Parcel Details"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          MyCustomText(
            text: "Enter Parcel Details",
            fontSize: screenWidth * 0.06,
          ),
          CustomSizedBox(
            height: screenWidth * 0.1,
          ),
          CustomTextField(
            controller: TextEditingController(),
            labelText: "Item Name",
            hintText: "Enter Item Name",
          ),
          CustomSizedBox(
            height: screenWidth * 0.05,
          ),
          CustomTextField(
            controller: TextEditingController(),
            labelText: "Parcel Value",
            hintText: r"Parcel Value ie: 500$",
          ),
          const Expanded(child: SizedBox()),
          CustomTextButton(
              padding: const EdgeInsets.symmetric(vertical: 13),
              onTab: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SenderDetailsScreenWidget()));
              },
              buttonText: "Next",
              buttonColor: Colors.blue,
              radius: 15,
              fontSize: screenWidth * 0.06),
          CustomSizedBox(
            height: screenWidth * 0.1,
          )
        ]),
      ),
    );
  }
}
