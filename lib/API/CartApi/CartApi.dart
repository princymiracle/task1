
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/API/CartApi/CartController.dart';

class CartApi extends GetView<CartsController> {
  CartsController cartsController = Get.put(CartsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Api"),
      ),
      body: Obx(() =>
        cartsController.isLoading.value ? Center(
         child: CircularProgressIndicator()):
         ListView.builder(
           itemCount: cartsController.carts.length,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text(cartsController.carts[index].title.toString()),
               leading: CircleAvatar(
                 child: Text(cartsController.carts[index].id.toString()),
               ),
               trailing: Text(cartsController.carts[index].price.toString()),
               subtitle: Text(cartsController.carts[index].total.toString()),
             );
             
           },
         ),
      ),
    );


  }
}
