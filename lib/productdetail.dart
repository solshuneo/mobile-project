import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var _heartColor = true;
  var _number = 0;
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              'https://cdn.tienphong.vn/images/bdfc554ea35983ad68a96e0050b6e2cb3d8b1819270d9b6bd32a00332cdf15294eb7943b9cc984ad60cb787cd1e3330126fe77b9aa1a62efdb2f7de733c6bcdaad907e5be505557b6a9b15c1372ac14770c8eda85cdbbde82f627a3f6a81bae080d3e32db45e74a2da1c6a69785388e9/anh-1-tao-1-15228175859241411126-8006.jpg.webp',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(ctx, '/login');
                    },
                    icon: Icon(Icons.keyboard_arrow_left),
                  ),
                  Icon(Icons.upload),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20, 10, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Naturel Red Apple",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("1kg, Price"),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _heartColor = !_heartColor;
                      });
                    },
                    icon: Icon(
                      Icons.favorite_outline,
                      color: _heartColor ? Colors.black : Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Colors.green,
                        onPressed: _number > 0
                            ? () {
                                setState(() {
                                  _number--;
                                });
                              }
                            : null,
                      ),
                      Chip(label: Text("$_number")),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.green,
                        onPressed: _number < 5
                            ? () {
                                setState(() {
                                  _number++;
                                });
                              }
                            : null,
                      ),
                    ],
                  ),
                  Text(
                    "\$4.99",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Detail",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              Text(
                "Apples Are Nutritions. Apples May Good For Weight Loss. Apples May Be Good For Your Hearth. As Part Of A Healthful And Varied Diet",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nutritions",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RawChip(
                    label: Text(
                      "100gr",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    backgroundColor: Colors.grey,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    labelPadding: EdgeInsets.zero,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                ],
              ),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Review", style: TextStyle(fontWeight: FontWeight.bold)),
                  RatingStars(
                    value: 3.5,
                    onValueChanged: (v) {},
                    starColor: Colors.yellow,
                    starOffColor: Colors.grey,
                    valueLabelVisibility: false,
                  ),
                ],
              ),
              Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 20, 0, 0)),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add To Basket",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
