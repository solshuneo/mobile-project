import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            "Logging",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text("Enter your email and password"),
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
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
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

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Forgot password"),
              ),
            ],
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
                      Navigator.pushNamed(ctx, '/productdetail');
                    }
                  : null,
              child: Text("Log in", style: TextStyle(color: Colors.white)),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(ctx, '/signup');
                },
                child: Text("Sign up", style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
