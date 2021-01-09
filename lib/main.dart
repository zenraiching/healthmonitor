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
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Health Monitoring"),
      ),
      body: Container(
          child: Column(
        children: [Medicine()],
      )),
    );
  }
}
