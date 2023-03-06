import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_rounded))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
