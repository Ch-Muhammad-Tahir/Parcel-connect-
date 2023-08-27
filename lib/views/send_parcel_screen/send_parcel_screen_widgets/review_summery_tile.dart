import 'package:flutter/material.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/widgets/custom_sized_box.dart';
import 'package:fyp_project/widgets/my_custom_text.dart';

class ReviewSummeryTileView extends StatelessWidget {
  final bool isSender;
  const ReviewSummeryTileView({super.key, required this.isSender});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Card(
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCustomText(
                  text: isSender ? "Sender Name" : "Receiver Name",
                  fontSize: screenSize * 0.035,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.grey,
                ),
                MyCustomText(
                  text: "Dummy person",
                  fontSize: screenSize * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            CustomSizedBox(
              height: screenSize * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCustomText(
                  text: "Phone Number ",
                  fontSize: screenSize * 0.035,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.grey,
                ),
                MyCustomText(
                  text: "+92 306 8192904",
                  fontSize: screenSize * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            CustomSizedBox(
              height: screenSize * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCustomText(
                  text: "Address",
                  fontSize: screenSize * 0.035,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.grey,
                ),
                MyCustomText(
                  text: "XYZ C- Block -Johar Town Lahore,",
                  fontSize: screenSize * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
