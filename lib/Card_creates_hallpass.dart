import 'package:flutter/material.dart';
import 'package:foxtrot/hallpassTile.dart';
import 'homepage.dart';

class MakeHallpassArea extends StatelessWidget {

  const MakeHallpassArea({
    super.key,
  })

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Send a Student"),
        const TextField(
          controller: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Student Name",
          ),
        ),
        const TextField(
          controller: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Destination",
          ),
        ),
        // save, cancel
        Row(
          children: [
            // Confirm
            MyButton(text: "Send", onPressed: (){null;},),
            // Cancel
            MyButton(text: "Cancel", onPressed: (){null;}),
          ],
        ),
      ],
    );
  }
}
