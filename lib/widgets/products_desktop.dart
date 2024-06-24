import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/products.dart';

class ProductsServices extends StatelessWidget {
  const ProductsServices({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth,
      color: Colors.black,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Products & Services",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            height: 530,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomColor.bgLight2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Column(
                      children: [
                        Image.asset(
                          productList[index].image,
                          height: 300,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(productList[index].title),
                        Text(productList[index].subtitle)
                      ],
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
