import 'package:flutter/material.dart';
import 'package:healthmonitor/MedicineMonitor/Medicine.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeApp());
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                child: Text("Side Menu"),
                decoration: BoxDecoration(color: Colors.blue)),
            ListTile(
              title: Text("Item 1"),
            ),
            ListTile(
              title: Text("Item 2"),
            ),
            ListTile(
                title: Text("Item 3"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        )),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Health Monitoring"),
        ),
        body: Container(
            child: Column(
          children: [Medicine()],
        )));
  }
}
