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
                    "Culpa ullamco consectetur magna irure sit laboris quis nostrud cupidatat quis quis elit quis.",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(height: 1.5, fontSize: 30),
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
