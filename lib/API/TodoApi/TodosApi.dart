import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'TodosController.dart';

class TodosApi extends GetView<TodosController> {
  TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodosApi"),
      ),
      body: Obx(() =>
      todosController.isLoading.value ? Center(
          child: CircularProgressIndicator()) :
      ListView.builder(
        itemCount: todosController.todos.length, shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Center(
                child: Text(todosController.todos[index].id.toString()),
              ),
            ),
            title: Text(todosController.todos[index].todo.toString()),
          );
        },
      )),
    );
  }
}
/*   body: controller.obx((todos) =>
          ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Center(
                    child: Text(todos[index]['id'].toString()),
                  ),
                ),
                title: Text(todos[index]['todo']),
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
*/

/*  body: c.obx((todos) =>
          ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Center(
                    child: Text(todos[index]['id'].toString()),
                  ),
                ),
                title: Text(todos[index]['title']),
              );
            },

          ),
        onEmpty: Text("Data not found"),
        onLoading: Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error) => Text(error.toString(),),
      ),*/