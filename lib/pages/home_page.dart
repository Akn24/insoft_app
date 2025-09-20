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
import 'package:demo_app/widgets/service_desktop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final landingPageKey = GlobalKey();
  final aboutUsKey = GlobalKey();
  final serviceKey = GlobalKey();
  final GlobalKey _productsKey = GlobalKey();
  final contactUsKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  late final List<GlobalKey> sectionKeys;
  @override
  void initState() {
    super.initState();
    sectionKeys = [
      landingPageKey,
      aboutUsKey,
      serviceKey,
      _productsKey,
      contactUsKey,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: Theme.of(context).primaryColor,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header
                  constraints.maxWidth >= kMinDesktopWidth
                      ? HeaderDesktop(
                          sectionKeys: sectionKeys,
                          scrollToSection: scrollToSection,
                        )
                      : HeaderMobile(
                          onTap: () {},
                          onMenuTap: () {
                            scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),

                  // Landing Page
                  KeyedSubtree(
                    key: landingPageKey,
                    child: constraints.maxWidth >= kMinDesktopWidth
                        ? const LandingPage()
                        : const LandingPageMobile(),
                  ),

                  // About Us
                  KeyedSubtree(
                    key: aboutUsKey,
                    child: constraints.maxWidth >= kMinDesktopWidth
                        ? const AboutUsDesktop()
                        : const AboutUsMobile(),
                  ),

                  KeyedSubtree(
                    key: serviceKey,
                    child: const ServiceDesktop(),
                  ),

                  // Products
                  KeyedSubtree(
                    key: _productsKey,
                    child:
                        const SizedBox(height: 1300, child: ProductsServices()),
                  ),
                
                  // Contact Us
                  KeyedSubtree(
                    key: contactUsKey,
                    child: const ContactUs(),
                  ),
                ],
              )));
    });
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
