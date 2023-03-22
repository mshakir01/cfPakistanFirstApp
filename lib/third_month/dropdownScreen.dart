import 'package:flutter/material.dart';

class DropDownScreeen extends StatefulWidget {
  const DropDownScreeen({Key? key}) : super(key: key);

  @override
  State<DropDownScreeen> createState() => _DropDownScreeenState();
}

class _DropDownScreeenState extends State<DropDownScreeen> {
  String defaultValue = "Selected";

  List items = ["Selected","item 1", "item 2", "item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: DropdownButton(
                value: defaultValue,
                items: items.map<DropdownMenuItem<String>>((data) {
                  return DropdownMenuItem
                    (value: data, child: Text(data));
                }).toList(),
                onChanged: ( newvalue) {
                  setState(() {
                    defaultValue=newvalue!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
