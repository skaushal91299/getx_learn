import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GetXValueGetController extends GetxController {
  var textFieldController = TextEditingController();
  var updatedValue = '__'.obs;
  valueChnage() {
    updatedValue.value = textFieldController.text;
    print(updatedValue.value);
  }
}
