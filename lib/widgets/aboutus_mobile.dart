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
                'Consequat cillum occaecat ut labore. Ut magna tempor enim minim eiusmod velit aute commodo nisi ea ad. Do cupidatat non anim nulla aute laboris incididunt non do nisi. Incididunt eiusmod do amet minim officia commodo sunt officia ut eu fugiat velit id.'
                'Labore fugiat enim pariatur et duis mollit consequat minim mollit labore cupidatat. Nulla cillum occaecat in adipisicing nostrud sunt. Officia ipsum reprehenderit aute minim laboris do exercitation. Veniam non cupidatat irure sint cupidatat amet. Occaecat ut Lorem voluptate eiusmod dolore. Proident amet laboris ad et ad adipisicing nisi esse cillum. Cillum reprehenderit deserunt elit ad voluptate ullamco.'
                'Aute eiusmod Lorem velit deserunt. Aliqua veniam incididunt eiusmod eu amet ad cupidatat. Pariatur laboris amet commodo commodo consectetur elit enim eiusmod nisi. Lorem ipsum aliquip excepteur velit amet reprehenderit qui reprehenderit.',
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
