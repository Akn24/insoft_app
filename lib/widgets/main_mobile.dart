import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../styles/style.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Center(
        child: Container(
          decoration: kGlassCardDecoration,
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Your one-stop solution for comprehensive Tally services and customized business software, helping you stay ahead in today's competitive market.",
                style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: AppTheme.charcoalBlack,
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: 180,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      foregroundColor: Colors.white,
                      shadowColor: AppTheme.primaryBlue.withOpacity(0.18),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 16,
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
    );
  }
}
