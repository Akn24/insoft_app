//import '../constants/theme.dart';
import 'package:demo_app/styles/style.dart';
import 'package:demo_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  final List<GlobalKey> sectionKeys;
  final Function(GlobalKey) scrollToSection;

  const HeaderDesktop({
    super.key,
    required this.sectionKeys,
    required this.scrollToSection,
  });


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
                child: _NavItem(
                  title: navTitles[i],
                  onTap: () => scrollToSection(sectionKeys[i]),
                ),
              ),
          ],
        ));
  }
}

class _NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const _NavItem({required this.title, required this.onTap});
  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: _isHovered ? const Color(0xFF1976D2) : const Color(0xFF004AAD),
                letterSpacing: 0.5,
              ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
