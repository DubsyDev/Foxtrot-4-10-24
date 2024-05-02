
import 'package:flutter/material.dart';

const TextTheme hallpassTextTheme = TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white54,
      fontSize: 15,
    ),
    bodySmall: TextStyle(
      color: Colors.white54,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      color: Colors.orange,
      fontSize: 18
    )
  );



class Hallpass extends StatefulWidget {
  late String _student;
  late String _origin;
  late String _destination;
  late String _teacher;
  Hallpass({super.key});

  @override
  State<Hallpass> createState() => _HallpassState();
}

class _HallpassState extends State<Hallpass> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardTheme.color,
      shape: Theme.of(context).cardTheme.shape,
      margin: Theme.of(context).cardTheme.margin,
      child: Column(
        children: [
          ListTile(
            title: Text('Voss ==> B132', style: hallpassTextTheme.titleMedium),
          ),
          ListTile(
            leading: Text('Mandish ==> Blackburn',style: hallpassTextTheme.bodySmall,),
            trailing: Text('8:45 - 8:55', style: hallpassTextTheme.bodySmall,)
          )
        ],
      )


    );
  }
}

