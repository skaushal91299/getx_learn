import 'dart:convert';
import 'package:getx_learn/views/rest_api_random_user/random_user_view.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../models/random_user.dart';

class RandomUserController extends GetxController {
  RandomUser? user_details;
  var isDataLoading = false.obs;

  getUserData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('https://randomuser.me/api/'));

      if (response.statusCode == 200) {
        var results = jsonDecode(response.body);
        user_details = RandomUser.fromJson(results);
        print(user_details);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isDataLoading(false);
    }
  }

  @override
  void onInit() {
    getUserData();
    super.onInit();
  }
}
