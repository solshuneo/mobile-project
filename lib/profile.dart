import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.shopping_bag, 'Orders'),
      (Icons.contact_emergency, 'My Details'),
      (Icons.location_on_sharp, 'Delivery Address'),
      (Icons.credit_card, 'Payment Methods'),
      (Icons.card_giftcard, 'Promo Card'),
      (Icons.notifications, 'Notifications'),
      (Icons.question_mark, 'Help'),
      (Icons.home, 'About'),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 40,

                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740&q=80',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Thân Ánh Thiện"),
                          SizedBox(width: 10),
                          Icon(Icons.edit, color: Colors.green, size: 15),
                        ],
                      ),

                      Text("solshuneo@gmail.com"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                dense: true,
                visualDensity: VisualDensity(vertical: -4),

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(items[index].$1),
                        SizedBox(width: 20),
                        Text(items[index].$2),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_rounded),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
          Divider(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 206, 204, 204),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text("Log Out"),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.logout),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
