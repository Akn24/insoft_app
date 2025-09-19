import '../constants/theme.dart';
import '../styles/style.dart';
import 'package:demo_app/constants/size.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: AppTheme.offWhite,
      child: Center(
        child: Container(
          decoration: kGlassCardDecoration,
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Text(
                "Get in touch",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppTheme.primaryBlue,
                    ),
              ),
              const SizedBox(height: 50),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
                  child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth >= kMinDesktopWidth) {
                      return buildNameEmailFieldsDesktop();
                    }
                    return buildNameEmailFieldsMobile();
                  })),
              const SizedBox(height: 15),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: const CustomTextField(
                  hintText: "Your Message",
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: SizedBox(
                  width: double.maxFinite,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.coral,
                        foregroundColor: AppTheme.offWhite,
                        shadowColor: AppTheme.coral.withOpacity(0.18),
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
                              return AppTheme.primaryBlue.withOpacity(0.12);
                            }
                            return null;
                          },
                        ),
                      ),
                      child: const Text("Get in touch"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildNameEmailFieldsDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldsMobile() {
    return const Column(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }
}
