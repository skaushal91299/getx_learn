import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/views/todo_getx/home_screen.dart';

import 'views/getX_value_get/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      home: HomeScreen(),
    );
  }
}
