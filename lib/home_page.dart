import 'package:flutter/material.dart';
import 'dialog_box.dart';
import 'hallpass_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text controller
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  // list of hallpasses
  List hallPassList = [];
  final now = DateTime.now();
  final time = TimeOfDay.now();
  // save new hallpass
  void saveNewHallpass() {
    setState(() {
      hallPassList.add(["Name: ${_controller.text} Destination:   ${_controller2.text} Time Left: "]);
      
    });
    Navigator.of(context).pop();
  }

  // Create new Hallpass
  void createNewHallpass() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          controller2: _controller2,
          onSave: saveNewHallpass,
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
          leading: const Icon(size: 40,Icons.account_circle_rounded),
          title:
           Text('Hallpasses ${time.format(context)}  ${now.month}/${now.day}'),
          elevation: 4,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: createNewHallpass,
          backgroundColor: Colors.black,
          hoverColor: Colors.grey[600],
          child: const Icon(Icons.add,color: Colors.blueGrey,),

        ),
        body: ListView.builder(
            itemCount: hallPassList.length,
            itemBuilder: (context, index) {
              return HallpassTile(
                hallpassName: hallPassList[index][0],
              );
            },
          ),
        );
  }
}
