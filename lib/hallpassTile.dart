import 'package:flutter/material.dart';

class HallPassTile extends StatelessWidget {
  final String hallpassName;


  HallPassTile({
    super.key,
    required this.hallpassName,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final time = TimeOfDay.now();
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            //Destination
            Text(style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,
              color: Colors.orangeAccent,), hallpassName),
            Text(style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,
              color: Colors.orangeAccent,),'${time.format(context)}  ${now.month}/${now.day}/${now.year}'),
          ],
        ),
      ),
    );
  }
}
