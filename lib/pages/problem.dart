import 'package:assignment2/pages/ide.dart';
import 'package:assignment2/pages/problems_statement.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoolController extends GetxController {
  Rx isTrue = true.obs;

  void toggle() {
    isTrue.value = !isTrue.value;
  }
}

class NameController extends GetxController {
  Rx isTrue = " Problem".obs;
  void toggle(String str) {
    isTrue.value = str;
  }
}

class Problem extends StatelessWidget {
  Problem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    BoolController boolController = Get.put(BoolController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Obx(
                () => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              boolController.toggle();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Coding Problems",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                boolController.isTrue == true
                                    ? Container(
                                        width: size.width * 0.45,
                                        height: 3,
                                        color: Colors.red,
                                      )
                                    : SizedBox(
                                        width: size.width * 0.45,
                                        height: 3,
                                      )
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              boolController.toggle();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "IDE",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                boolController.isTrue == false
                                    ? Container(
                                        width: size.width * 0.45,
                                        height: 3,
                                        color: Colors.red,
                                      )
                                    : SizedBox(
                                        width: size.width * 0.45,
                                        height: 3,
                                      )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    boolController.isTrue == true
                        ? ProblemStatement()
                        : const Ide()
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
