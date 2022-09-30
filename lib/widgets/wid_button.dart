// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class widButton extends StatelessWidget {
  widButton({
    required this.color,
    required this.title,
    required this.onPressed,
  });
  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
