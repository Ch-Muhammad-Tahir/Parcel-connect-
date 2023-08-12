import 'package:flutter/material.dart';

class HomePageScreenWidget extends StatelessWidget {
  const HomePageScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(title: Text("With of Screen is $screenWith")),
      body: const Column(children: [Text("Hello")]),
    );
  }
}
