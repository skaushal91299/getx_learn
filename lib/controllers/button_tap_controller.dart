import 'package:get/get.dart';

class ButtonTapOntroller extends GetxController {
  var _count = 0.obs;
  get count => _count;
  void increment() {
    _count++;
    update();
    print(_count);
  }
}
