import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../styles/style.dart';

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth,
      color: AppTheme.offWhite,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
      child: Center(
        child: Container(
          decoration: kGlassCardDecoration,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "About Us",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: AppTheme.primaryBlue,
                    ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    'https://via.placeholder.com/400',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Insoft Solutions is one of the fastest growing software houses, based in Chennai. We provide end-to-end business solutions for Tally, covering the entire gamut from sales, implementation, training, customization, after-sales services, and maintenance. Insoft Solutions also offers integrated, customized, and enhanced products/applications to meet diverse client needs.'
                        '\n\nWe help clients manage the business and technology complexities of today\'s economy by providing software, technological expertise, quality procedures, and services. Our offerings include software and web solutions that fit your business and budget, helping you stay ahead of competitors in a challenging global market. Our solutions are derived from a deep understanding of our clients needs and requirements.'
                        '\n\nOur experienced project management team, with proven technical capabilities, ensures that our customers receive intelligent solutions in the most timely, cost-efficient, and reliable manner. We are highly experienced custom software programmers serving the varied interests of our valued clients.'
                        '\nOur software development center gives our clients the advantage of obtaining high-quality solutions at lower costs. This means you get custom programs for your business at a relatively low price, thus saving significantly on development costs.'
                        '\n\nInsoft Solutions understands the unique business implications of each client and offers highly customized solutions that fit perfectly with your business needs. We are proud of our highly satisfied customers who continue to give us repeat business for their growing requirements.'
                        'Additionally, Insoft Solutions helps with managing accounts, educating people about Tally, selling the software, and providing comprehensive services related to it.',
                style: TextStyle(
                  fontSize: 18,
                  color: AppTheme.charcoalBlack,
                  height: 1.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
