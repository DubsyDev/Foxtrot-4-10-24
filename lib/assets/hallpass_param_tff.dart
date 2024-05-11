import 'package:flutter/material.dart';

class HallpassParamTextFormField extends StatelessWidget {
  TextEditingController inputController;
  String labelText;

  HallpassParamTextFormField({
    super.key,
    required this.inputController,
    required this.labelText,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(100, 58, 58, 58),
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: TextFormField(
              canRequestFocus: true,
              controller: inputController,
              autocorrect: true,
              enableSuggestions: true,
              cursorColor: Colors.orangeAccent,
              style: const TextStyle(
                  color: Colors.orange
              ),
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                labelText: labelText,
                labelStyle: const TextStyle(color: Colors.orangeAccent),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
