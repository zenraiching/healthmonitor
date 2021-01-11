import 'package:healthmonitor/Database/repository.dart';
import 'package:healthmonitor/models/CategoryModel.dart';

class CategoryService {
  Repository _repository;

  CategoryService() {
    _repository = Repository();
  }

  // Create data
  saveCategory(CategoryModel category) async {
    return await _repository.insertData('categories', category.categoryMap());
  }

  // Read data from table
  readCategories() async {
    return await _repository.readData('categories');
  }
}
