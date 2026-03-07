import 'package:first/login.dart';
import 'package:first/productdetail.dart';
import 'package:first/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      initialRoute: '/productdetail',
      routes: {
        '/login': (ctx) => Scaffold(body: Login()),
        '/signup': (ctx) => Scaffold(body: Signup()),
        '/productdetail': (ctx) => Scaffold(body: ProductDetail()),
      },
    );
  }
}
