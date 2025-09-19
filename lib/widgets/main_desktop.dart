import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/theme.dart';
import '../styles/style.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      color: AppTheme.offWhite,
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(minHeight: 350),
      child: Center(
        child: Container(
          decoration: kGlassCardDecoration,
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your one-stop solution for comprehensive Tally services and customized business software, helping you stay ahead in today's competitive market.",
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              height: 1.5,
                              fontSize: 32,
                              color: AppTheme.charcoalBlack,
                            ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 250,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: ElevatedButton(
                            onPressed: () {
                              ScrollAction();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryBlue,
                              foregroundColor: Colors.white,
                              shadowColor: AppTheme.primaryBlue.withOpacity(0.18),
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ).copyWith(
                              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return AppTheme.coral.withOpacity(0.12);
                                  }
                                  return null;
                                },
                              ),
                            ),
                            child: const Text("Get in touch"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                color: Colors.black26,
                width: 10,
                thickness: 2,
                indent: 120,
                endIndent: 120,
              ),
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  "assets/tally-prime-logo.svg",
                  semanticsLabel: 'My SVG Image',
                  height: 120,
                  width: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
