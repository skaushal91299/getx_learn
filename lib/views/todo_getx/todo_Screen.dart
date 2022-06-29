import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controllers/todo_getx.dart';
import '../../models/todo_getx.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key}) : super(key: key);

  static const id = '/Todo_Screen';

  final TextEditingController textEditingController = TextEditingController();
  final TodoController todoController = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                // textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: "Enter your Note Here!!!",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style: const TextStyle(
                  fontSize: 25.0,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                autofocus: true,
                controller: textEditingController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  child: const Text('Cancel'),
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: const Text('Add'),
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    todoController.todos.add(
                      Todo(
                        text: textEditingController.text,
                      ),
                    );
                    Get.back();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
