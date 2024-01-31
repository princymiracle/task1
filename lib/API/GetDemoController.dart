

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetDemoController extends GetxController with StateMixin{
//  String url = "https://dummyjson.com/users/5/todos";
  String url = "https://dummyjson.com/posts";


  fechdata() async{
    try{
      change("loading",status: RxStatus.loading());
      http.Response res = await http.get(Uri.parse(url));
      print("response ${res.body}");
      List tags =[];
      var data = jsonDecode(res.body);
      tags = data['posts'];

      if(tags.isEmpty){
        change(tags,status: RxStatus.empty());
      } else{
        change(tags,status: RxStatus.success());
      }
    }catch(e){
      change("there is some error",status: RxStatus.error());
    }
  }
  @override
  void onInit() {
    fechdata();
    super.onInit();
  }
}
