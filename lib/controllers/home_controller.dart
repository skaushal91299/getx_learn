import 'package:get/get.dart';

import '../models/home_model.dart';

class HomeController extends GetxController {
  @override
  void initState() {
    ever(count, (_) => print(count));
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
  // var student = HomeStudentClass();
  //For Individuals
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  // void changeAge() {
  //   student.age.value = 23;
  // }

  var student = HomeStudentClass(name: 'Sahil', age: 21).obs;
  // For Whole Class
  void convertToUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  void changeAge() {
    student.update((student) {
      student!.age = 22;
    });
  }

  var count = 0.obs;
  void increment() {
    count++;
  }
}
