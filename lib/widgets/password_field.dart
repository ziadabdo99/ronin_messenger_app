// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

class PasswordField extends StatelessWidget {
  PasswordField({required this.hintText});
  late TextEditingController textEditingController;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      cursorColor: Colors.white,
      onChanged: (value) {
        textEditingController;
      },
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.yellow,
          ),
          filled: true,
          fillColor: Colors.grey),
    );
  }
}
