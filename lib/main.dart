import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/views/rest_api_random_user/random_user_view.dart';

import 'views/getX_value_get/main.dart';
import 'views/list_search/list_search.dart';

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
      home: GetXValueGet(),
    );
  }
}
