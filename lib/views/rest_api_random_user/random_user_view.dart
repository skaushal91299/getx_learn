import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controllers/random_user_conroller.dart';

class RandomUserView extends StatefulWidget {
  const RandomUserView({Key? key}) : super(key: key);

  @override
  State<RandomUserView> createState() => _RandomUserViewState();
}

class _RandomUserViewState extends State<RandomUserView> {
  ListView _mainView(RandomUserController controller) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: controller.user_details?.results!.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.all(50),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(
                        '${controller.user_details?.results![index].picture!.large}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: 'E-Mail :- ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '${controller.user_details?.results![index].email}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ])),
              const SizedBox(height: 20),
              RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: [
                    const TextSpan(
                      text: 'Gender :- ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '${controller.user_details?.results![index].gender}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ])),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    RandomUserController controller = Get.put(RandomUserController());
    return Scaffold(
      body: Obx(() => SafeArea(
            child: controller.isDataLoading.value
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : _mainView(controller),
          )),
    );
  }
}
