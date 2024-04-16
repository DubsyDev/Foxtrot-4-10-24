import 'package:flutter/material.dart';
import 'hallpassTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  final now = DateTime.now();
  final time = TimeOfDay.now();
  List hallPassList = [];

  void saveNewHallPass() {
    setState(() {
      hallPassList.add([
        "Name: ${_controller.text} Destination:   ${_controller2.text} Time Left: "
      ]);
    });
    Navigator.of(context).pop();
  }

  void createNewHallPass() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          controller2: _controller2,
          onSave: saveNewHallPass,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final time = TimeOfDay.now();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          elevation: 4,
          leading: const Icon(size: 40, Icons.account_circle_rounded),
          title: Text(
              'Hall passes ${time.format(context)}  ${now.month}/${now.day}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewHallPass,
          backgroundColor: Color.fromARGB(90, 80, 80, 80),
          hoverColor: Colors.blueGrey[600],
          child: const Icon(
            Icons.add,
            color: Colors.blueGrey,
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/dark.png',
              height: double.minPositive,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: SizedBox(
                height: 200.0,
                child: ListView.builder(
                  itemCount: hallPassList.length,
                  itemBuilder: (context, index) {
                    return HallPassTile(
                      hallpassName: hallPassList[index][0],
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Switch Theme'),
            )
          ],
        ));
  }
}

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final dynamic controller;
  final dynamic controller2;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user input
            const Text("Send a Student"),
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
              ),
            ),

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
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.orangeAccent[900],
      hoverColor: Colors.grey,
      child: Text(text),
    );
  }
}
