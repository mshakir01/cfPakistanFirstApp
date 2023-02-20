import 'package:flutter/material.dart';

class SeasionTwoScreen extends StatefulWidget {
  const SeasionTwoScreen({Key? key}) : super(key: key);

  @override
  State<SeasionTwoScreen> createState() => _SeasionTwoScreenState();
}

class _SeasionTwoScreenState extends State<SeasionTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seasion 2"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),

            SizedBox(height: 20,),
            Image.asset(
              "assets/iphone.png",
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,),
            Divider(height: 2,color: Colors.amberAccent,),
            SizedBox(height: 10,),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   child: Container(
            //     color: Colors.red,
            //     width: double.infinity,
            //     height: 200,
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.red,

                    height: 100,
                  ),
                ),

                Flexible(
                  child: Container(
                    color: Colors.yellow,

                    child: Text("Hello",style: TextStyle(fontSize: 20),),
                  ),
                ),
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}
