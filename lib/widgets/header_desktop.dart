import 'package:demo_app/styles/style.dart';
import 'package:demo_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';

import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 60,
        width: double.maxFinite,
        decoration: kHeaderDecoration,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SiteLogo(
                onTap: () {},
              ),
            ),
            const Spacer(),
            for (int i = 0; i < navTitles.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                    )),
              ),
          ],
        ));
  }
}
