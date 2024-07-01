import 'package:demo_app/constants/size.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Text("Get in touch", style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldsDesktop();
                }
                return buildNameEmailFieldsMobile();
              })),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Get in touch")),
            ),
          )
        ],
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
