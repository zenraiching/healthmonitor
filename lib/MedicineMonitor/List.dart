import 'package:flutter/material.dart';

class ListOfCategories extends StatefulWidget {
  @override
  _ListOfCategoriesState createState() => _ListOfCategoriesState();
}

class _ListOfCategoriesState extends State<ListOfCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List of Categories"),
      ),
      body: Container(
          child: Column(
        children: [Text("List of Categories")],
      )),
    );
  }
}
