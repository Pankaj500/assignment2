import 'package:assignment2/pages/problem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProblemStatement extends StatelessWidget {
  NameController nameController = NameController();

  ProblemStatement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Obx(
          () => Text(
            nameController.isTrue.toString(),
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.You may assume that each input would have exactly one solution, and you may not use the same element twice.You can return the answer in any order.",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Example",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Input: nums = [3,2,4]\ntarget = 6\nOutput: [1,2]",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Constraints",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        Text(
          "2 <= nums.length <= 104\n-109 <= nums[i] <= 109\n-109 <= target <= 109",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
