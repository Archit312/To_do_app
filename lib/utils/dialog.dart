import 'package:flutter/material.dart';
import 'package:to_do_app/utils/buttons.dart';

class TextBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  TextBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[300],
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add new task",
                border: OutlineInputBorder(),
              ),
            ),
            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtons(
                  buttontext: "Save",
                  onPressed: () {
                    onSave();
                  },
                ),
                MyButtons(
                  buttontext: "Cancel",
                  onPressed: () {
                    onCancel();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
