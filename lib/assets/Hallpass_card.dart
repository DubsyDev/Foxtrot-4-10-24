
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



class Hallpass extends StatelessWidget {
  Hallpass({
    super.key,
    required this.student,
    required this.origin,
    required this.destination,
  });

  String student;
  String origin;
  String destination;
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(const Duration(minutes: 10));


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardTheme.color,
      shape: Theme.of(context).cardTheme.shape,
      margin: Theme.of(context).cardTheme.margin,
      child: Column(
        children: [
          ListTile(
            title: Text('$student  =>  $origin', style: hallpassTextTheme.titleMedium),
            trailing: Text(
              '${startTime.hour}:${startTime.minute} - ${endTime.hour}:${endTime.minute}',
              style: hallpassTextTheme.bodyMedium,
            )
          ),
        ],
      )


    );
  }
}

