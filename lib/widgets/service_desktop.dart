import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../styles/style.dart';

class ServiceItem {
  final String title;
  final String description;
  final IconData icon;
  ServiceItem({
    required this.title,
    required this.description,
    required this.icon,
  });
}

final List<ServiceItem> _services = [
  ServiceItem(
    title: 'Training',
    icon: Icons.school,
    description:
        'Tally Prime training to get your staff productive quickly. We cover core workflows and advanced features so users can harness the system effectively.',
  ),
  ServiceItem(
    title: 'Customization',
    icon: Icons.tune,
    description:
        'Tailored customisations to adapt Tally and business apps to your processes — adding reports, fields and automations as required.',
  ),
  ServiceItem(
    title: 'Support Maintenance',
    icon: Icons.support_agent,
    description:
        'Remote support and maintenance with fast response times — we resolve queries, fix issues and keep systems running smoothly.',
  ),
  ServiceItem(
    title: 'Synchronization',
    icon: Icons.sync_alt,
    description:
        'Data synchronisation across sites or instances using client-server setups so teams can work with consistent data in real time.',
  ),
  ServiceItem(
    title: 'Data Recovery',
    icon: Icons.restore,
    description:
        'Expert data recovery services for Tally: we recover your business data quickly and safely, using tested tools and processes.',
  ),
  ServiceItem(
    title: 'Password Recovery',
    icon: Icons.vpn_key,
    description:
        'Administrative password recovery for locked Tally companies, performed only on authorized requests with required validation.',
  ),
  ServiceItem(
    title: 'Data Migration',
    icon: Icons.compare_arrows,
    description:
        'Migration of existing Tally data (various versions) to newer releases preserving transactions and masters with minimal downtime.',
  ),
];

class ServiceDesktop extends StatelessWidget {
  const ServiceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final crossAxisCount = width >= 1100 ? 3 : (width >= 700 ? 2 : 1);
    return Container(
      width: double.infinity,
      color: AppTheme.offWhite,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Container(
            decoration: kGlassCardDecoration,
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Service",
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: AppTheme.primaryBlue,
                                ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Text(
                  "Our software services provide tailored, cost-effective solutions — from training and customization to migration and recovery. "
                  "Choose the service you need and contact us for a customised plan.",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.5,
                        fontSize: 16,
                        color: AppTheme.charcoalBlack,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _services.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.05,
                  ),
                  itemBuilder: (context, index) {
                    final s = _services[index];
                    return _ServiceCard(item: s);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ServiceCard extends StatefulWidget {
  final ServiceItem item;
  const _ServiceCard({required this.item});

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool _hover = false;

  void _onEnter(PointerEvent _) => setState(() => _hover = true);
  void _onExit(PointerEvent _) => setState(() => _hover = false);

  @override
  Widget build(BuildContext context) {
    final baseColor = const Color.fromARGB(255, 183, 197, 235);
    final hoverShadow = [
      BoxShadow(
        color: const Color.fromARGB(255, 195, 198, 238).withOpacity(0.35),
        blurRadius: 18,
        offset: const Offset(0, 10),
      ),
    ];
    final normalShadow = [
      BoxShadow(
        color: const Color.fromARGB(255, 174, 179, 226).withOpacity(0.15),
        blurRadius: 6,
        offset: const Offset(0, 4),
      ),
    ];

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedScale(
        scale: _hover ? 1.03 : 1.0,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(0, _hover ? -8 : 0, 0),
          decoration: BoxDecoration(
            color: baseColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: _hover ? hoverShadow : normalShadow,
            border: Border.all(color: Colors.black.withOpacity(0.2)),
          ),
          padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top centered circular icon
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: AppTheme.primaryBlue,
                  child: Icon(widget.item.icon, color: Colors.white, size: 22),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                widget.item.title.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  widget.item.description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black.withOpacity(0.85),
                        height: 1.4,
                      ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
