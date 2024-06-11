import 'package:demo_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';

import '../styles/style.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onTap, this.onMenuTap});
  final VoidCallback? onTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: onTap,
          ),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
