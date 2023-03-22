import 'package:flutter/material.dart';

class DropScreen extends StatefulWidget {
  const DropScreen({Key? key}) : super(key: key);

  @override
  State<DropScreen> createState() => _DropScreenState();
}

class _DropScreenState extends State<DropScreen> {
  String dropdownValue = "Item 1";
  List items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Container(
                child: DropdownButton(
                  value: dropdownValue,
              items: items.map<DropdownMenuItem<String>>((e) {
                return DropdownMenuItem(
                  value: e,
                    child: Text(e));
              }).toList(),
              onChanged: (value) {},
            )),
          )
        ],
      ),
    );
  }
}
