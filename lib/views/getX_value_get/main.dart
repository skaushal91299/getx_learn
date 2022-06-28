import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/getXValue_get.dart';

class GetXValueGet extends StatelessWidget {
  const GetXValueGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetXValueGetController controller = Get.put(GetXValueGetController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Value Get'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              maxLines: 3,
              controller: controller.textFieldController,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                controller.valueChnage();

                // controller.updatedValue.value =
                //     controller.textFieldController.text;

                if (kDebugMode) {
                  print(
                      "=================>${controller.textFieldController.value.text}");
                }
              },
              child: Container(
                  color: Colors.amberAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Text('Get Value')),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  "Updated Value is: ${controller.updatedValue}",
                  overflow: TextOverflow.clip,
                  maxLines: 5,
                )),
          ],
        ),
      ),
    );
  }
}
