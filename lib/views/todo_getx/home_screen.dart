// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controllers/todo_getx.dart';
import 'package:getx_learn/views/todo_getx/todo_Screen.dart';

import 'edit_todo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button Pressed');
          Get.to(() => TodoScreen());
        },
        child: const Icon(Icons.add),
      ),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) => Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.deepOrange,
              child: const Icon(Icons.delete),
            ),
            onDismissed: (_) {
              todoController.todos.removeAt(index);
              Get.snackbar('Removed!', 'Successfully Removed');
            },
            child: ListTile(
              title: Text(
                todoController.todos[index].text!,
                style: todoController.todos[index].done
                    ? const TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      )
                    : const TextStyle(
                        color: Colors.black,
                      ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => TodoEdit(index: index));
                },
                icon: const Icon(Icons.edit),
              ),
              leading: Checkbox(
                value: todoController.todos[index].done,
                onChanged: (val) {
                  var todo = todoController.todos[index];
                  todo.done = val!;
                  todoController.todos[index] = todo;
                },
              ),
            ),
          ),
          itemCount: todoController.todos.length,
        ),
      ),
    );
  }
}
