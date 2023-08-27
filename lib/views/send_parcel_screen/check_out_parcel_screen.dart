import 'package:flutter/material.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/views/send_parcel_screen/send_parcel_screen_widgets/review_summery_tile.dart';
import 'package:fyp_project/widgets/custom_sized_box.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/my_custom_text.dart';

class CheckOutParcelScreenWidget extends StatelessWidget {
  const CheckOutParcelScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const MyCustomText(text: "Check Out"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          Center(
            child: MyCustomText(
              text: "Review Summary",
              fontSize: screenSize * 0.04,
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomSizedBox(
            height: screenSize * 0.04,
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.grey.shade50,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomText(
                        text: "Item Name",
                        fontSize: screenSize * 0.035,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.grey,
                      ),
                      MyCustomText(
                        text: "XYZ",
                        fontSize: screenSize * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  CustomSizedBox(
                    height: screenSize * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomText(
                        text: "Parcel Value",
                        fontSize: screenSize * 0.035,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.grey,
                      ),
                      MyCustomText(
                        text: r"$100",
                        fontSize: screenSize * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  CustomSizedBox(
                    height: screenSize * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomText(
                        text: "Parcel Size",
                        fontSize: screenSize * 0.035,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.grey,
                      ),
                      MyCustomText(
                        text: "Small",
                        fontSize: screenSize * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  CustomSizedBox(
                    height: screenSize * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomText(
                        text: "CategoryType",
                        fontSize: screenSize * 0.035,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.grey,
                      ),
                      MyCustomText(
                        text: "Documents Type",
                        fontSize: screenSize * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  CustomSizedBox(
                    height: screenSize * 0.025,
                  )
                ]),
              )),
          CustomSizedBox(
            height: screenSize * 0.04,
          ),
          const ReviewSummeryTileView(isSender: true),
          CustomSizedBox(
            height: screenSize * 0.04,
          ),
          const ReviewSummeryTileView(isSender: false),
          CustomSizedBox(
            height: screenSize * 0.07,
          ),
          CustomTextButton(
              padding: const EdgeInsets.symmetric(vertical: 13),
              onTab: () {},
              buttonText: "Post Brief",
              buttonColor: Colors.blue,
              radius: 15,
              fontSize: GetScreenSize.getScreenWidth(context) * 0.06),
          CustomSizedBox(
            height: screenSize * 0.05,
          ),
        ]),
      ),
    );
  }
}
