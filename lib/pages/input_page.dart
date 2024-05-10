import 'package:flutter/material.dart';
class HallpassPage extends StatelessWidget {
  HallpassPage({super.key});

  final nameInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New Hallpass',),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Text('Name: '),
                const SizedBox(width: 20,),
                TextFormField(
                  controller: nameInputController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide(width: 2))
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
