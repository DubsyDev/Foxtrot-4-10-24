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

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final time = TimeOfDay.now();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        toolbarHeight: 80,
        elevation: 4,
        leading: const Icon(size: 40, Icons.account_circle_rounded),
        title: const Text('Dashboard',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Row(
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
          ),
        ],
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
