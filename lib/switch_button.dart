import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
              scale: 0.9,
              child: CupertinoSwitch(
                value: isSwitched,
                activeColor: Color.fromARGB(255, 212, 204, 204),
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ]),
    );
  }
}
