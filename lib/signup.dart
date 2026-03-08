import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _keyForm = GlobalKey<FormState>();
  var _obscureText = true;
  @override
  Widget build(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              'https://www.shutterstock.com/image-vector/3d-orange-carrots-crispy-vegetable-600nw-2418628339.jpg',
              width: 100,
              height: 100,
            ),
          ),
          Text(
            "Sign up",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text("Enter your email and password"),
          Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 0, 0, 20)),
          TextField(
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "amdin",
            ),
          ),
          Padding(padding: EdgeInsetsGeometry.fromLTRB(0, 0, 0, 20)),
          Form(
            key: _keyForm,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "admin@shuneo.com",
                  ),
                  validator: (email) {
                    if (email == null || email.isEmpty) return "";
                    if (!EmailValidator.validate(email)) return "not a mail";
                    var prefix = 0;
                    while (email[prefix] != '@') {
                      prefix++;
                    }
                    if (prefix < 2) return "Vui lòng nhập đúng định vị";
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "password",
                    hintText: " ",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  validator: (password) {
                    if (password == null || password.isEmpty) return "";
                    RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                    );
                    if (password.length < 6 || !regex.hasMatch(password)) {
                      return "Tối thiểu 6 kí tự, 1 hoa, 1 thường, 1 chữ số";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, height: 1.5),
                children: [
                  TextSpan(text: "By continuing you agree to our "),
                  TextSpan(
                    text: "Term of Service",
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(text: " and "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: _keyForm.currentState?.validate() ?? false
                  ? Colors.green
                  : Colors.grey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextButton(
              onPressed: _keyForm.currentState?.validate() ?? false
                  ? () {
                      ctx.go('/login');
                    }
                  : null,
              child: Text("Sign up", style: TextStyle(color: Colors.white)),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account"),
              TextButton(
                onPressed: () {
                  ctx.go('/login');
                },
                child: Text("Sign in", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
