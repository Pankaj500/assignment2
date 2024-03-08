import 'package:flutter/material.dart';

class Ide extends StatelessWidget {
  const Ide({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: size.height * 0.6,
            decoration: const BoxDecoration(color: Colors.black),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              maxLines: 100,
              decoration: InputDecoration(
                hintText: "Start Code from Here",
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Run Code')),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
            ],
          )
        ],
      ),
    );
  }
}
