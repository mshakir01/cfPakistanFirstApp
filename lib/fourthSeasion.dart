import 'package:flutter/material.dart';

class FourthSeasion extends StatefulWidget {
  const FourthSeasion({Key? key}) : super(key: key);

  @override
  State<FourthSeasion> createState() => _FourthSeasionState();
}

class _FourthSeasionState extends State<FourthSeasion> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Testing ");
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///Custom Button
          // Center(
          //   child: GestureDetector(
          //     onTap: (){
          //       print("Hello");
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //           color: Colors.blue[500],
          //         borderRadius: BorderRadius.circular(10)
          //       ),
          //       width: 100,
          //       height: 50,
          //       alignment: Alignment.center,
          //       child: Text("Button"),
          //     ),
          //   ),
          // ),
          /// Listview
          Container(
            width: double.infinity,
            height: 800,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            child: Text("Hellleo"),
                          ),
                          Container(
                          child:  Image.asset("assets/iphone.png",width: 50,fit:BoxFit.cover)

                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),

          ///GridView
          // SizedBox(
          //   height: 500,
          //   // color: Colors.blue,
          //   child: Expanded(
          //     child: GridView.builder(
          //       itemCount: 5,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisSpacing: 10,
          //           mainAxisSpacing: 10,
          //           crossAxisCount: 3),
          //       itemBuilder: (BuildContext context, int index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             alignment: Alignment.center,
          //             color: Colors.yellow,
          //             child: Text("Helllo"),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),

          /// Check Box
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Checkbox"),
          //     Checkbox(
          //         value: value,
          //         onChanged: (value) {
          //           setState((){
          //          this.value = value!;
          //           });
          //
          //         }),
          //   ],
          // ),


        ],
      ),
    );
  }
}
