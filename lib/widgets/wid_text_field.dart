// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

class WidTextField extends StatelessWidget {
  WidTextField({required this.hintText, required this.icon});
  late TextEditingController textEditingController;
  final String hintText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
          prefixIcon: icon,
          filled: true,
          fillColor: Colors.grey),
    );
  }
}
