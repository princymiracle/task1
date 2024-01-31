import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'ProductModel .dart';
class ProductController extends GetxController {
  final isLoading = true.obs;
  RxList<ProductModel> productList= <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading.value = true;
      List<ProductModel> products = await ApiService().fetchProducts();
      if (products.isNotEmpty) {
        productList.value = products;
      }
    } finally {
      isLoading.value = false;
    }
  }
}