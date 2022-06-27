import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/views/rest_api_random_user/random_user_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter GetX',
      home: RandomUserView(),
    );
  }
}
