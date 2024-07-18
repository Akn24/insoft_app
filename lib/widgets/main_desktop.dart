import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      color: Theme.of(context).primaryColor,
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your one-stop solution for comprehensive Tally services and customized business software, helping you stay ahead in today's competitive market.",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        height: 1.5, fontSize: 24, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text(
                        "Get in touch",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const VerticalDivider(
            color: Colors.black45,
            width: 10,
            thickness: 2,
            indent: 200,
            endIndent: 200,
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
