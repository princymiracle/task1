/*import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetDemoController extends GetxController with StateMixin{
  String url = "https://dummyjson.com/users/5/todos";

   getData() async{
    try{
      change("loading",status: RxStatus.loading());
      http.Response res = await http.get(Uri.parse(url));
      print("response ${res.body}");
      List todos =[];
       var data = jsonDecode(res.body);
       todos = data['todos'];

      if(todos.isEmpty){
        change(todos,status: RxStatus.empty());
      } else{
        change(todos,status: RxStatus.success());
      }
    }catch(e){
      change("there is some error",status: RxStatus.error());
    }
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}*/


//
// import 'dart:convert';
//
// import 'package:flutter/src/widgets/basic.dart';
// import 'package:flutter/src/widgets/scroll_view.dart';
// import 'package:flutter/src/widgets/text.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:task1/api/Todosmodel.dart';
//
// class TodosController extends GetxController with StateMixin {
//   String url = "https://dummyjson.com/users/5/todos";
//
//
//   // cathdata() async {
//   //   try {
//   //     change("loading", status: RxStatus.loading());
//   //     http.Response response = await http.get(Uri.parse(url));
//   //     print("response ${response.body}");
//   //     // Map<String, dynamic> jsondata = jsonDecode(response.body);
//   //     // print("jsondata ${jsondata};
//   //     List todosdata = [];
//   //     var data = jsonDecode(response.body);
//   //     // todosdata = data.map((e) =>
//   //     // TodosModel
//   //     //     .fromJson(e)
//   //     //     .todos).toList();
//   //     // todosdata = data['todos'];
//   //     // print("data ${todosdata.first.skip}");
//   //
//   //     /*    if (response.statusCode == 200) {
//   //         // List data = jsondata['todos'];
//   //       }*/
//   //     if (todosdata.isEmpty) {
//   //       change(todosdata, status: RxStatus.empty());
//   //     } else {
//   //       change(todosdata, status: RxStatus.success());
//   //     }
//   //   } catch (e) {
//   //     change("error ", status: RxStatus.error());
//   //   }
//   // }
//   //
//   // @override
//   // void onInit() {
//   //   cathdata();
//   //   super.onInit();
//   // }
// }
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'TodosModel.dart';



class TodosController extends GetxController{
  String url = "https://dummyjson.com/users/5/todos";
  List<TodosModel> todos = [];
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    fetchdata();
    super.onInit();
  }
  fetchdata() async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      print("response ${response.body}");
      Map<String,dynamic> jsondata = jsonDecode(response.body);
      print("jsondata ${jsondata}");

      if(response.statusCode == 200){
        List data = jsondata['todos'];
        todos = data.map((e) => TodosModel.fromJson(e)).toList();
      }
      isLoading.value = false;
    }catch(e){
    }
  }
}

