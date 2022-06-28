import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/views/getx_route_management/get_ofall_wn.dart';
import 'package:getx_learn/views/getx_route_management/get_off_wn.dart';

import 'get_to_wn.dart';

class GetXRoutes extends StatelessWidget {
  const GetXRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Route'),
      ),
      body: Column(
        children: [
          _button(() {
            Get.to(() => const GetToWM());
          }, 'Get To'),
          _button(() {
            Get.to(() => const GetOffWM());
          }, 'Get Off'),
          _button(() {
            Get.to(() => const GetOffAllWM());
          }, 'Get Off ALL'),
        ],
      ),
    );
  }

  GestureDetector _button(onTap, String name) {
    return GestureDetector(
      onTap: onTap,
      child: Text(name),
    );
  }
}
