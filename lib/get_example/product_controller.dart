import 'package:broadway_infosys/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<ProductModel> featuredProductList = <ProductModel>[].obs;
  RxList<ProductModel> productCartList = <ProductModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addItemToFeaturedProductList();
  }

  void addItemToFeaturedProductList() {
    // find difference between addAll and assignAll
    featuredProductList.assignAll(productList);
  }

  // show data in detail page using getx

  void addToCart(ProductModel product) {
    // add data to productCartList
    // show snackbar using getx "product added successfully"
    //use productCartList.assign() to add data
  }

  void deleteItemFromCart() {
    // remove item from productCartList
  }

  // 1. call this in initstate of shopping cart screen
  // 2. + and - button in shopping cart screen
  // 3. delete button in shopping cart screen
  void calculateTotalPrice() {
    // sum of each product price * quantity
  }
}
