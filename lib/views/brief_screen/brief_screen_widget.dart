import 'package:flutter/material.dart';
import 'package:fyp_project/providers/send_parcel_provide.dart';
import 'package:fyp_project/utils/media_query.dart';
import 'package:fyp_project/widgets/my_custom_text.dart';
import 'package:line_icons/line_icon.dart';
import 'package:provider/provider.dart';

import 'brief_screen_widget/brief_tile_view.dart';

class BriefScreenWidget extends StatelessWidget {
  const BriefScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Briefs"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Provider.of<SendParcelProvider>(context, listen: true)
                .briefs
                .isEmpty
            ? Center(
                child: Image.asset(
                  "assets/images/bid (1).png",
                  height: GetScreenSize.getScreenWidth(context) * 0.5,
                ),
              )
            : Consumer<SendParcelProvider>(builder: (context, provider, child) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      return BriefTileView(brief: provider.briefs[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: provider.briefs.length);
              }));
  }
}
