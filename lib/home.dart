import 'package:first/components/category.dart';
import 'package:first/components/product.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final products = [
      (
        'https://static.vecteezy.com/system/resources/previews/029/228/596/non_2x/apple-transparent-background-free-png.png',
        'Apple',
        '1kg',
        44.0,
      ),
      (
        'https://thumbs.dreamstime.com/b/bunch-bananas-6175887.jpg',
        'Organic Bananas',
        '1kg',
        10.0,
      ),
      (
        'https://media.istockphoto.com/id/931422644/vi/anh/%E1%BB%9Bt-chu%C3%B4ng-%C4%91%E1%BB%8F-b%E1%BB%8B-c%C3%B4-l%E1%BA%ADp-tr%C3%AAn-n%E1%BB%81n-tr%E1%BA%AFng.jpg?s=170667a&w=0&k=20&c=nM_QvMmV8sc-xWR3ZkhTNSJdyRyMX5LNLr6WkWXBDiw=',
        'Bell Pepper Red',
        '1kg, Priceg',
        4.99,
      ),
      (
        'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2026/2/1/photo-1769949039392-1769949039728791581372.png',
        "Gunger",
        '250gm, Priceg',
        12.0,
      ),
    ];
    final categories = [
      ('https://pngimg.com/d/flour_PNG25.png', 'Rice'),
      (
        'https://img.pikbest.com/png-images/20241022/black-beans-png-isolated-on-transparent-background-high-resolution_10990985.png!sw800',
        'Pussy',
      ),
    ];
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(20, 40, 20, 100),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://www.shutterstock.com/image-vector/3d-orange-carrots-crispy-vegetable-600nw-2418628339.jpg',
              width: 40,
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_sharp),
                Text("DaNang, Vietnam"),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white70,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
            Image.network(
              'https://i.ytimg.com/vi/UWEknUoajiE/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgXSg7MA8=&rs=AOn4CLCK7vX3uVvladu00JnOoWnaWriUUQ',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Product(
                    imgSrc: products[index].$1,
                    title: products[index].$2,
                    description: products[index].$3,
                    price: products[index].$4,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Product(
                    imgSrc: products[index].$1,
                    title: products[index].$2,
                    description: products[index].$3,
                    price: products[index].$4,
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Groceries',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Category(
                    imgSrc: categories[index].$1,
                    name: categories[index].$2,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Product(
                    imgSrc: products[index].$1,
                    title: products[index].$2,
                    description: products[index].$3,
                    price: products[index].$4,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
