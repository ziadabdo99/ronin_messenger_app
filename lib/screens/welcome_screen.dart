// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ronin/screens/chat_screen.dart';
import 'package:ronin/screens/registeraion_screen.dart';
import 'package:ronin/screens/sign_in_screen.dart';
import '../widgets/wid_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = "welcome_screen";

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 250,
                        child: IconButton(
                            icon: Image.asset("images/ronin.jpg"),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, ChatScreen.screenRoute);
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  widButton(
                    color: Colors.yellow,
                    title: 'Sign in',
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.screenRoute);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  widButton(
                    color: Colors.yellow,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushNamed(
                          context, RegistrationScreen.screenRoute);
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
