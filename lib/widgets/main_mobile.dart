import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: screenWidth,
            color: Colors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi, \nI'm Ankit Kumar Nath\nA Flutter Developer",
            style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Get in touch")),
          )
        ],
      ),
    );
  }
}
