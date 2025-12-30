import 'package:get/get.dart';

// index
// copywith
class ProductModel {
  // final int index;
  final String productImage;
  final double price;
  RxBool isFavorite;
  final String productName;
  final String description;
  double rating;
  final int reviewCount;
  final String unit;
  RxInt quantity;
  final String? tag;

  ProductModel({
    // required this.index,
    required this.productImage,
    required this.price,
    required this.isFavorite,
    required this.productName,
    required this.description,
    this.rating = 0,
    this.reviewCount = 0,
    required this.unit,
    required this.quantity,
    this.tag,
  });
}

final List<ProductModel> productList = [
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1586201375761-83865001e17b',
    price: 120,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Fresh Apples',
    description: 'Organic red apples',
    rating: 4.5,
    reviewCount: 120,
    unit: 'kg',
    tag: 'Fresh',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1582515073490-dc99b1c3c6a8',
    price: 80,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Bananas',
    description: 'Sweet ripe bananas',
    rating: 4.2,
    reviewCount: 95,
    unit: 'dozen',
    tag: 'Best Seller',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1604908554168-4f3c7c2fdfb2',
    price: 200,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Tomatoes',
    description: 'Fresh farm tomatoes',
    rating: 4.0,
    reviewCount: 60,
    unit: 'kg',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1585238342028-4bbc7a1f1c2e',
    price: 150,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Potatoes',
    description: 'Organic potatoes',
    rating: 4.1,
    reviewCount: 70,
    unit: 'kg',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1615485290382-441e4d049cb5',
    price: 90,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Onions',
    description: 'Red onions',
    rating: 4.3,
    reviewCount: 88,
    unit: 'kg',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1592924357228-91a4daadcfea',
    price: 60,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Carrots',
    description: 'Crunchy carrots',
    rating: 4.0,
    reviewCount: 40,
    unit: 'kg',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1587049352851-8d7b4b30e1a2',
    price: 250,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Milk',
    description: 'Fresh cow milk',
    rating: 4.6,
    reviewCount: 150,
    unit: 'liter',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2',
    price: 300,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Eggs',
    description: 'Farm fresh eggs',
    rating: 4.7,
    reviewCount: 180,
    unit: 'tray',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1589302168068-964664d93dc0',
    price: 180,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Bread',
    description: 'Whole wheat bread',
    rating: 4.4,
    reviewCount: 110,
    unit: 'packet',
  ),
  ProductModel(
    productImage:
        'https://images.unsplash.com/photo-1617196034738-26c9c5a5c89c',
    price: 500,
    isFavorite: false.obs,
    quantity: 1.obs,
    productName: 'Chicken',
    description: 'Fresh chicken meat',
    rating: 4.8,
    reviewCount: 210,
    unit: 'kg',
    tag: 'Popular',
  ),
];
