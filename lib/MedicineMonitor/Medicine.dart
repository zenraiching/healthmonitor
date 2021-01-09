import 'package:flutter/material.dart';

class Medicine extends StatefulWidget {
  @override
  _MedicineState createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Add New Medicine",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Medicine Name"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Doage in mg"),
            ),
            Row(
              children: [
                Text(
                  "Interval Time",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Remind me every    ",
                  style: TextStyle(fontSize: 20),
                ),
                DropdownButton(
                  value: dropdownValue,
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                )
              ],
            ),
            Row(children: [
              Text(
                "Set starting time",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ]),
            FlatButton(
              onPressed: () {},
              child: Text("Pick Time"),
              color: Colors.green,
            )
          ],
        ));
  }
}
