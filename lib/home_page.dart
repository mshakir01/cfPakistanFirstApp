import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Fist App"),
        ),
        body: Column(
          children: [

            SizedBox(
              height: 50,
            ),
            Text(
              "This Our First Project",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Login Form",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 50,
            ),

            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), hintText: "Password"),
            ),

            SizedBox(
              height: 50,
            ),
            // Container(
            //   width: 300,
            //   height: 100,
            //   color: Colors.brown,
            // ),
            // Container(
            //   color: Colors.amber,
            //   width: 300,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.red,
            //   width: 300,
            //   height: 100,
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Row(
            //   children: [
            //     Container(
            //       width: 100,
            //       height: 100,
            //       color: Colors.brown,
            //     ),
            //     Container(
            //       color: Colors.amber,
            //       width: 100,
            //       height: 100,
            //     ),
            //     Container(
            //       color: Colors.red,
            //       width: 100,
            //       height: 100,
            //     ),
            //   ],
            // ),

            ElevatedButton(onPressed: () {}, child: Text("Button")),
            Slider(
              min: 0,
              max: 100,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        ));
  }
}
