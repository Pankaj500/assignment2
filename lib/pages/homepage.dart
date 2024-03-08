import 'package:assignment2/pages/problem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    NameController nameController = NameController();

    List<String> problems = [
      "Two Sum",
      "Reverse Integer",
      "Palindrome Checker",
      "Longest Common Subsequence",
      "Maximum Subarray",
      "Merge Two Sorted Lists",
      "Validate Parentheses",
      "Climbing Stairs",
      "Find Peak Element",
      "Minimum Path Sum",
      "Merge Intervals",
      "Remove Duplicates from Sorted Array",
      "Container With Most Water",
      "Implement Trie (Prefix Tree)",
      "Implement Queue using Stacks",
      "Longest Palindromic Substring",
      "Valid Anagram",
      "Search in Rotated Sorted Array",
      "Find All Anagrams in a String",
      "Subarray Sum Equals K",
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                "Coding Problems",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: problems.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => Problem());
                          nameController.toggle(problems[index]);
                        },
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "$index ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Container(
                                width: size.width * 0.82,
                                child: Text(
                                  problems[index],
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
