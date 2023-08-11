import 'package:flutter/material.dart';

class HomePageScreenWidget extends StatelessWidget {
  const HomePageScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: const Column(children: [Text("Hello")]),
    );
  }
}
