import 'dart:convert';

import 'package:get/get.dart';

import 'CartsModel.dart';
import 'package:http/http.dart' as http;

class CartsController extends GetxController{
  String url = "https://dummyjson.com/carts";
  List<ProductModel> carts = [];
  RxBool isLoading = true.obs;

 @override
  void onInit() {
    getdata();
    super.onInit();
  }

  getdata() async {
   try{
     http.Response response = await http.get(Uri.parse(url));
     print("response ${response.body}");
     Map<String, dynamic> jsondata = jsonDecode(response.body);
     print("jsondata ${jsondata}");

     if(response.statusCode == 200){
       List data = jsondata['carts'];
       List data2 = data.first['products'];
       carts = data2.map((e) => ProductModel.fromJson(e)).toList();
     }
     isLoading.value = false;
   } catch (e) {}
  }
}