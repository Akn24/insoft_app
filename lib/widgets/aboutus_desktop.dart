import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../styles/style.dart';
//import 'package:demo_app/pages/home_page.dart';

class AboutUsDesktop extends StatelessWidget {
  const AboutUsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth,
      color: AppTheme.offWhite,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Center(
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
                      "About Us",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: AppTheme.primaryBlue,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/about_us.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Insoft Solutions is one of the fastest growing software houses, based in Chennai. We provide end-to-end business solutions for Tally, covering the entire gamut from sales, implementation, training, customization, after-sales services, and maintenance. Insoft Solutions also offers integrated, customized, and enhanced products/applications to meet diverse client needs.'
                        '\n\nWe help clients manage the business and technology complexities of today\'s economy by providing software, technological expertise, quality procedures, and services. Our offerings include software and web solutions that fit your business and budget, helping you stay ahead of competitors in a challenging global market. Our solutions are derived from a deep understanding of our clients needs and requirements.'
                        '\n\nOur experienced project management team, with proven technical capabilities, ensures that our customers receive intelligent solutions in the most timely, cost-efficient, and reliable manner. We are highly experienced custom software programmers serving the varied interests of our valued clients.'
                        '\nOur software development center gives our clients the advantage of obtaining high-quality solutions at lower costs. This means you get custom programs for your business at a relatively low price, thus saving significantly on development costs.'
                        '\n\nInsoft Solutions understands the unique business implications of each client and offers highly customized solutions that fit perfectly with your business needs. We are proud of our highly satisfied customers who continue to give us repeat business for their growing requirements.'
                        'Additionally, Insoft Solutions helps with managing accounts, educating people about Tally, selling the software, and providing comprehensive services related to it.',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppTheme.charcoalBlack.withOpacity(0.85),
                              fontSize: 18,
                              height: 1.7,
                            ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
