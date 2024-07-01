import 'package:flutter/material.dart';

import '../utils/products.dart';

class ProductsServices extends StatelessWidget {
  const ProductsServices({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      width: screenWidth,
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          Text("Products & Services",
              style: Theme.of(context).textTheme.displayLarge),
          SizedBox(
            height: screenHeight / 1.1,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: SizedBox(
                    width: 450,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              productList[index].image,
                              height: 300,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            productList[index].title,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Text(
                            productList[index].subtitle,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
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
