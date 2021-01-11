import 'package:flutter/material.dart';
import 'package:healthmonitor/MedicineMonitor/List.dart';
import 'package:healthmonitor/models/CategoryModel.dart';
import 'package:healthmonitor/services/category_service.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var _editMedicineName = TextEditingController();
  var _editDescription = TextEditingController();
  var categoryModel = CategoryModel();
  var categoryService = CategoryService();
  List<CategoryModel> _categoryList = List<CategoryModel>();

  @override
  void initState() {
    super.initState();
    getAllCategories();
  }

  getAllCategories() async {
    _categoryList = List<CategoryModel>();
    var categories = await categoryService.readCategories();
    categories.forEach((category) {
      setState(() {
        var categoryModel = CategoryModel();
        categoryModel.name = category['name'];
        categoryModel.description = category['description'];
        categoryModel.id = category['id'];
        _categoryList.add(categoryModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            TextFormField(
              controller: _editMedicineName,
              decoration: InputDecoration(labelText: "Medicine Name"),
            ),
            TextFormField(
              controller: _editDescription,
              decoration: InputDecoration(labelText: "Medicine Description"),
            ),
            FlatButton(
              onPressed: () async {
                categoryModel.description = _editDescription.text;
                categoryModel.name = _editMedicineName.text;
                print("TESTING: " + _editMedicineName.text);
                var result = await categoryService.saveCategory(categoryModel);
                print(categoryModel);
                print(result);
              },
              child: Text("Add medicine"),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListOfCategories()),
                );
              },
              child: Text("List of medicine"),
              color: Colors.green[300],
            ),
          ],
        ));
  }
}
