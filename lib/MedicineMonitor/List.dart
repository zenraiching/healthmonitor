import 'package:flutter/material.dart';
import 'package:healthmonitor/MedicineMonitor/List.dart';
import 'package:healthmonitor/models/CategoryModel.dart';
import 'package:healthmonitor/services/category_service.dart';

class ListOfCategories extends StatefulWidget {
  @override
  _ListOfCategoriesState createState() => _ListOfCategoriesState();
}

class _ListOfCategoriesState extends State<ListOfCategories> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List of Categories"),
      ),
      body: ListView.builder(
          itemCount: _categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
              child: Card(
                elevation: 8.0,
                child: ListTile(
                  leading: Text("fd"),
                  title: Text(_categoryList[index].description),
                ),
              ),
            );
          }),
    );
  }
}
