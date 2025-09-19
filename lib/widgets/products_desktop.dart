//import 'dart:math';
import 'dart:html' as html;
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

import '../utils/products.dart';
import '../styles/style.dart';
import '../constants/theme.dart';

class ProductsServices extends StatelessWidget {
  const ProductsServices({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    final ScrollController _scrollController = ScrollController();
    return Container(
      width: screenWidth,
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          Text("Products & Services",
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                tooltip: 'Scroll Left',
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.offset - 470,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
              ),
              Expanded(
                child: SizedBox(
                  height: screenHeight / 1.4,
                  child: ListView.separated(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: productList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.07),
                              blurRadius: 16,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        child: SizedBox(
                          width: 450,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: Image.asset(
                                      productList[index].image,
                                      height: 220,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  productList[index].title,
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        color: Colors.black87,
                                      ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  productList[index].subtitle,
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontSize: 16,
                                        color: Colors.black54,
                                      ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  productList[index].price,
                                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                        color: Theme.of(context).colorScheme.primary,
                                      ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      html.window.open(
                                          productList[index].downloadlink, "_blank");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context).colorScheme.primary,
                                      foregroundColor: Colors.white,
                                      elevation: 6,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 32),
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    child: const Text('Buy Now'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 20);
                    },
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                tooltip: 'Scroll Right',
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.offset + 470,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: screenHeight / 1.6,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: kGlassCardDecoration,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  child: SizedBox(
                    width: 450,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                serviceList[index].image,
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            serviceList[index].title,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppTheme.primaryBlue,
                                ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            serviceList[index].subtitle,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  fontSize: 16,
                                  color: AppTheme.charcoalBlack.withOpacity(0.8),
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            serviceList[index].price,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppTheme.secondaryTeal,
                                  fontSize: 20,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
            ),
          )
        ],
      ),
    );
  }
}

/*Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
*/