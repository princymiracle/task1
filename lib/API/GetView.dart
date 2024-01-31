import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'GetDemoController.dart';
import 'GetView.dart';


class GetViewDemo extends GetView<GetDemoController> {
  GetDemoController controller = Get.put(GetDemoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Call"),
      ),
      body: controller.obx((tags) =>
          ListView.builder(
            itemCount: tags.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Center(
                    child: Text(tags[index]['id'].toString()),
                  ),
                ),
                title: Text(tags[index]['title']),
              );
            },
          ),
        onEmpty: Text("Data not found"),
        onLoading: Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error) => Text(error.toString(),),
      ),
    );
  }
}

