import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String imgSrc;
  final double price;
  final String title;
  final String description;

  const Product({
    super.key,
    required this.imgSrc,
    required this.title,
    required this.description,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imgSrc, height: 92),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(description, style: TextStyle(fontSize: 12, color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$$price'),
              IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),

                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
