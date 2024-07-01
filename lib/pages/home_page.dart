import 'package:demo_app/constants/size.dart';
import 'package:demo_app/widgets/aboutus_desktop.dart';
import 'package:demo_app/widgets/aboutus_mobile.dart';
import 'package:demo_app/widgets/contact_section.dart';
import 'package:demo_app/widgets/drawer_mobile.dart';
import 'package:demo_app/widgets/header_desktop.dart';
import 'package:demo_app/widgets/header_mobile.dart';
import 'package:demo_app/widgets/main_desktop.dart';
import 'package:demo_app/widgets/main_mobile.dart';
import 'package:demo_app/widgets/products_desktop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: Theme.of(context).primaryColor,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              constraints.maxWidth >= kMinDesktopWidth
                  ? const HeaderDesktop()
                  : HeaderMobile(
                      onTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),

              //LandingPage
              constraints.maxWidth >= kMinDesktopWidth
                  ? const LandingPage()
                  : const LandingPageMobile(),

              //About Us
              constraints.maxWidth >= kMinDesktopWidth
                  ? const AboutUsDesktop()
                  : const AboutUsMobile(),

              //Products
              const ProductsServices(),

              //Contact Us
              const ContactUs()
            ],
          ));
    });
  }
}
