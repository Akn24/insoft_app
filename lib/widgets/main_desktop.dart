import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi, \nI'm Ankit Kumar Nath\nA Flutter Developer",
                  style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: CustomColor.whitePrimary),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Get in touch")),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              "assets/tally-prime-logo.svg",
              semanticsLabel: 'My SVG Image',
              height: 100,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
