import 'package:first/login.dart';
import 'package:first/productdetail.dart';
import 'package:first/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp.router(routerConfig: _router, title: "App");
  }
}

final _router = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => Scaffold(body: Login()),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => Scaffold(body: Signup()),
    ),
    GoRoute(
      path: '/productdetail',
      builder: (context, state) => Scaffold(body: ProductDetail()),
    ),
  ],
);
