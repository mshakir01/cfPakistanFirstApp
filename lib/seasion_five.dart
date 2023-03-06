import 'package:first_app/detail_Screen.dart';
import 'package:flutter/material.dart';

class FifthSeasion extends StatefulWidget {
  const FifthSeasion({Key? key}) : super(key: key);

  @override
  State<FifthSeasion> createState() => _FifthSeasionState();
}

class _FifthSeasionState extends State<FifthSeasion> {
  bool con = false;
  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //RADIO BUTTON
            Text("Select Gener "),
            Row(
              children: [
                Text("Male"),
                Radio(
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("Female"),
                Radio(
                    value: 0,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    }),
              ],
            ),

            // SWITCH BUTTON

            Switch(
                value: con,
                onChanged: (value) {
                  setState(() {
                    con = value;
                  });
                }),

            //SNACKBAR
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: Text("The message has been Deleted"),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Snack Bar")),
            // BOTTOM SHEET
            BottomSheetDesign(),

            //DATA TABLE
            Container(
              width: double.infinity,
              height: 400,
              child: DataTable(
                columns: [
                  DataColumn(label: Text("ID ")),
                  DataColumn(label: Text("Name ")),
                  DataColumn(label: Text("Phone ")),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("1")),
                      DataCell(Text("Shakir")),
                      DataCell(Text("123456789")),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("2")),
                      DataCell(Text("Usman")),
                      DataCell(Text("123456789")),
                    ],
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12)),
                width: 200,
                height: 50,
                child: Text(
                  "Detail Screen",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            //CircularProgressIndicator
            // Center(child: CircularProgressIndicator()),
            //
            // LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class BottomSheetDesign extends StatelessWidget {
  const BottomSheetDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("Bottom Sheet"),
                      Text("Bottom Sheet"),
                      Text("Bottom Sheet"),
                      Text("Bottom Sheet"),
                    ],
                  ),
                );
              });
        },
        child: Text("Button"));
  }
}
