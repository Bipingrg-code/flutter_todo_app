// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo_app1/util/button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[300],
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input task
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add new Task.?"),
            ),

            //button save or Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(
                  width: 8,
                ),
                //cancel
                MyButton(
                  text: "cancel",
                  onPressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
