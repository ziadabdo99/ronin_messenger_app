// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ronin/screens/chat_screen.dart';
import 'package:ronin/screens/registeraion_screen.dart';
import 'package:ronin/screens/sign_in_screen.dart';
import 'package:ronin/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.screenRoute,
        routes: {
          WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
          SignInScreen.screenRoute: (context) => SignInScreen(),
          RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
          ChatScreen.screenRoute: (context) => ChatScreen(),
        });
  }
}
