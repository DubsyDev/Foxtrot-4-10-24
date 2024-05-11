import 'package:flutter/material.dart';
import 'package:foxtrot/assets/hallpass_param_tff.dart';

class HallpassInputCard extends StatelessWidget {
  HallpassInputCard({super.key});

  TextEditingController studentNameController = TextEditingController();
  TextEditingController studentDestinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return

      Expanded(
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(30),
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HallpassParamTextFormField(
                        inputController: studentNameController,
                        labelText: 'name:',
                      ),
                      HallpassParamTextFormField(
                        inputController: studentDestinationController,
                        labelText: 'destination:',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
