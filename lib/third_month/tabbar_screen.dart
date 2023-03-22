import 'package:flutter/material.dart';

import 'dropdownScreen.dart';

class TabBarDropDownScreen extends StatefulWidget {
  const TabBarDropDownScreen({Key? key}) : super(key: key);

  @override
  State<TabBarDropDownScreen> createState() => _TabBarDropDownScreenState();
}

class _TabBarDropDownScreenState extends State<TabBarDropDownScreen> {
  String dropdownValue = "shakirbcs1@gmail.com";
  List items = ["shakirbcs1@gmail.com", "muhd.shakiir@gmail.com", "namalom@gmail.com"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/iphone.png"),
                  ),
                  Text("Sandra Adams",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),

                  Center(
                    child: Container(
                        child: DropdownButton(
                          value: dropdownValue,
                          items: items.map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Text(e));
                          }).toList(),
                          onChanged: (value) {
                           setState(() {
                             dropdownValue=value!;
                           });
                          },
                        )),
                  )
                ],
              )),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TabBarDropDownScreen()));
                },
                leading: Icon(Icons.mail_sharp),
                title: Text("My Files"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(" Shared with me"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: Icon(Icons.download_done_sharp),
                title: Text("Recent"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("offline"),
              ),
              ListTile(
                leading: Icon(Icons.backup),
                title: Text("upload"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Backup"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Divider(
                  height: 2,
                  color: Colors.white60,
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting & account"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.access_alarm),
              ),
              Tab(
                icon: Icon(Icons.card_giftcard_outlined),
              ),
              Tab(
                icon: Icon(Icons.card_giftcard_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DropDownScreeen(),
            Container(
              color: Colors.yellow,
              width: double.infinity,
              child: Text(
                "Box 2",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.white60,
              width: double.infinity,
              child: Text(
                "Box 3",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              child: Text(
                "Box 4",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
