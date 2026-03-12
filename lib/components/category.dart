import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imgSrc;
  final String name;
  const Category({super.key, required this.imgSrc, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 203, 180),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imgSrc, height: 70, width: 50),
          SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
