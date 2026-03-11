import 'package:first/login.dart';
import 'package:first/productdetail.dart';
import 'package:first/profile.dart';
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
  initialLocation: "/profile",

  routes: [
    ShellRoute(
      builder: (ctx, state, child) {
        return Scaffold(body: child);
      },
      routes: [
        GoRoute(path: '/login', builder: (ctx, state) => Login()),
        GoRoute(path: '/signup', builder: (ctx, state) => Signup()),
        GoRoute(
          path: '/productdetail',
          builder: (ctx, state) => ProductDetail(),
        ),
        GoRoute(path: '/profile', builder: (context, state) => Profile()),
      ],
    ),
  ],
);
