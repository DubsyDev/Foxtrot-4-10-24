import 'package:flutter/material.dart';
import 'my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final controller2;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.controller2,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 240,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // user input
          Text("Send a Student"),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Student Name",
              
            ),
            
          ),
          TextField(
            controller: controller2,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter a destination",
            )),

          // save, cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Confirm
              MyButton(text: "Send!", onPressed: onSave),

              const SizedBox(width: 10),

              // Cancel
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
