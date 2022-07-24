import 'package:chairluxeshop/models/categories.dart';
import 'package:chairluxeshop/services/fetchCategories.dart';
import 'package:get/get.dart';

class CategoriesCon extends GetxController {
  List<Category> categories = <Category>[].obs;

  fetchCategory() async {
    categories = await fetchCategories();
    return categories;
  }

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  
}
