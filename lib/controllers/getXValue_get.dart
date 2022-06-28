// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GetXValueGetController extends GetxController {
  var textFieldController = TextEditingController();
  var updatedValue = '__'.obs;
  valueChnage() {
    updatedValue.value = textFieldController.text;
    if (kDebugMode) {
      if (kDebugMode) {
        print(updatedValue.value);
      }
    }
  }
}
