import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

class BottoomNavigtionScreen extends StatefulWidget {
  const BottoomNavigtionScreen({Key? key}) : super(key: key);

  @override
  State<BottoomNavigtionScreen> createState() => _BottoomNavigtionScreenState();
}

class _BottoomNavigtionScreenState extends State<BottoomNavigtionScreen> {
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    MyStatelessWidget(),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: Colors.black,),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera,color: Colors.black,),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.black,),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.black,),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}




class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}

