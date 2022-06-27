import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  GestureDetector _buttons(dynamic onTap, String text) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          color: Colors.blue,
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var student = HomeStudentClass(name: 'Sahil', age: 22).obs;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GetBuilder<HomeController>(
                  // init: controller,
                  // dispose: (_) => controller.dispose(),
                  // init: HomeController(),
                  builder: (controller) {
                return Text('The Value is ${controller.count}');
              }),

              GestureDetector(
                onTap: () {
                  controller.increment();
                  // Get.find<HomeController>().increment();
                },
                child: Text('Button'),
              ),
              // Obx(() => Text('$count')),
              // _buttons(() {
              //   increment();
              // }, 'Button One'),
              // Obx(
              //   () => Text(
              //       '${controller.student.value.name} ${controller.student.value.age} '),
              // ),
              const SizedBox(height: 20),
              _buttons(() {
                // For Individuals
                // student.name.value = student.name.value.toUpperCase();
                // controller.convertToUpperCase();
                // controller.changeAge();

                // For whole class
                // student.update((student) {
                //   student!.name = student.name.toString().toUpperCase();
                //   student.age = 23;
                // });
                controller.convertToUpperCase();
                controller.changeAge();

                //Using COntroller
              }, 'Button Two'),
              _buttons(() {}, 'Button Three'),
              _buttons(() {}, 'Button Four'),
            ],
          ),
        ),
      ),
    );
  }
}
