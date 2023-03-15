import 'package:flutter/material.dart';

import 'fourthSeasion.dart';

class FiveSeasionScreen extends StatefulWidget {
  const FiveSeasionScreen({Key? key}) : super(key: key);

  @override
  State<FiveSeasionScreen> createState() => _FiveSeasionScreenState();
}

class _FiveSeasionScreenState extends State<FiveSeasionScreen> {
  static List<Widget> _pages = [
    HomeScreen(),
    FourthSeasion(),
    Icon(
      Icons.car_rental_rounded,
      size: 200,
    ),
  ];

  int _selectedScreen = 0;

  void _selectedTaped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedTaped,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black26,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit,
                color: Colors.black26,
              ),
              label: "Four"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.time_to_leave_outlined,
                color: Colors.black26,
              ),
              label: "Profile"),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedScreen),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _val = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              max: 100,
              min: 1,
              activeColor: Colors.redAccent,
              value: _val,
              onChanged: (newValue) {
                setState(() {
                  _val = newValue;
                });
              })
        ],
      ),
    );
  }
}
