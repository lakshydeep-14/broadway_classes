import 'package:broadway_infosys/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shared_preferences/shared_preferences.dart';

String isFirstRunKey = 'isFirstRun';
String isLoggedInKey = 'isLoggedIn';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<ProductModel> products = List.from(productList);
  int? counter;
  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   readValue();
  // }

  // readValue() async {
  //   // await Future.delayed(Duration(seconds: 3));
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   counter = prefs.getInt('counter');
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        // title: Text(counter == null ? "No value found" : 'Value: $counter'),
        // actions: [
        //   IconButton(
        //     onPressed: () async {
        //       final SharedPreferences prefs =
        //           await SharedPreferences.getInstance();
        //       await prefs.setInt('counter', 10);
        //       print('Value saved');
        //     },
        //     icon: Icon(Icons.read_more),
        //   ),
        //   IconButton(
        //     onPressed: () async {
        //       final SharedPreferences prefs =
        //           await SharedPreferences.getInstance();
        //       final int? counter = prefs.getInt('counter');
        //       print(counter ?? 'No value found');
        //     },
        //     icon: Icon(Icons.print),
        //   ),
        //   IconButton(
        //     onPressed: () async {
        //       final SharedPreferences prefs =
        //           await SharedPreferences.getInstance();
        //       prefs.remove('counter');
        //       print('Value removed');
        //     },
        //     icon: Icon(Icons.delete),
        //   ),
        // ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Slidable(
            key: ValueKey(product.productName),
            startActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) => deleteProduct(index),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: (_) {},
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.more,
                  label: 'More',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) => deleteProduct(index),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: (_) {},
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.more,
                  label: 'More',
                ),
              ],
            ),

            child: ProductTile(product: product),
          );
        },
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.productImage,
            width: 55,
            height: 55,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.broken_image, size: 55),
          ),
        ),
        title: Text(
          product.productName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Rs ${product.price} / ${product.unit}\n${product.description}',
        ),
        isThreeLine: true,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.orange, size: 18),
            Text(product.rating.toString()),
          ],
        ),
      ),
    );
  }
}
