import 'package:broadway_infosys/get_example/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Page')),
      body: Get.find<ProductController>().productCartList.isEmpty
          ? Center(child: Text('No product added to cart'))
          : ListView.builder(
              itemCount: Get.find<ProductController>().productCartList.length,
              itemBuilder: (_, i) {
                final item = Get.find<ProductController>().productCartList[i];
                return ListTile(title: Text(item.productName));
              },
            ),
    );
  }
}
