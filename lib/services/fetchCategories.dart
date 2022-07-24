import 'dart:convert';

import 'package:chairluxeshop/models/categories.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fetchCategories() async {
  const url = 'https://5f210aa9daa42f001666535e.mockapi.io/api/categories';

  final response = await http.get(Uri.parse(url));
  final body = json.decode(response.body) as List;

  if (response.statusCode == 200) {
    List<Category> categories =
        body.map((cate) => Category.fromJson(cate)).toList();

    return categories;
  } else {
    throw Exception('failed to fetch');
  }
}
