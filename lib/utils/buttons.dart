import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final buttontext;
  VoidCallback onPressed;

  MyButtons({super.key, required this.buttontext, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(12.0)),
        child: Text(
          buttontext,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
