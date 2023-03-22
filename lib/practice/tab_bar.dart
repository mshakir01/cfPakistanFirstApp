import 'package:flutter/material.dart';

import '../home_page.dart';
import 'drop_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.red,
            drawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(child: Container(
                    color: Colors.red,
                  )),
                  ListTile(
                    title: const Text('Item 1'),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: const Text('Item 3'),
                    onTap: () {

                    },
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_car)),
              ]),
            ),
            body:  TabBarView(
              children: [
                DropScreen(),
                HomePage(),
                HomePage(),
              ],
            )));
  }
}
