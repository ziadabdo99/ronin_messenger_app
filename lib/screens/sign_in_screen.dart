import 'package:flutter/material.dart';
import 'package:ronin/widgets/password_field.dart';
import 'package:ronin/widgets/wid_button.dart';

import '../widgets/wid_text_field.dart';

class SignInScreen extends StatefulWidget {
  static const String screenRoute = "signin_screen";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  height: 250,
                  width: 250,
                  child: Image.asset("images/ronin.jpg")),
              WidTextField(
                hintText: 'Enter your email',
                icon: Icon(
                  Icons.email,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PasswordField(
                hintText: 'Enter your password',
              ),
              SizedBox(
                height: 35,
              ),
              widButton(color: Colors.red, title: 'Sign in', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
