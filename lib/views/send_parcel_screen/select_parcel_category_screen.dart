import 'package:flutter/material.dart';
import 'package:fyp_project/utils/app_constant.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/views/send_parcel_screen/parcel_detail_screen.dart';
import 'package:fyp_project/widgets/custom_sized_box.dart';

class SelectCategoryScreenWidget extends StatelessWidget {
  const SelectCategoryScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = GetScreenSize.getScreenWidth(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("What are You Sending"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(AppConstants.categories[index]),
              leading: AppConstants.icons[index],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ParcelDetailScreen()));
              },
            );
          },
          separatorBuilder: (context, index) {
            return CustomSizedBox(
              height: screenSize * 0.04,
            );
          },
          itemCount: AppConstants.categories.length),
    );
  }
}
