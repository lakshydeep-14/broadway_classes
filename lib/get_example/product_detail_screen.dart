import 'package:broadway_infosys/get_example/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                Get.find<ProductController>().selectedProduct.value!.productName
                    .toString(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<ProductController>().addToCart(
                Get.find<ProductController>().selectedProduct.value!,
              );
            },
            child: Text('Add to cart'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(CartPage());
            },
            child: Text('Go to cart page'),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
