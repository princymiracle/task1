import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ProductController.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('productList'),
      ),
      body: Obx(
            () {
          if (productController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              productController.productList[index].imageLink,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: Colors.blue,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productController.productList[index].title,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Text(
                                  productController.productList[index].description,
                                  style:
                                  const TextStyle(fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  productController.productList[index].price.toString(),
                                  style:
                                  const TextStyle(fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 2,
                    )
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}