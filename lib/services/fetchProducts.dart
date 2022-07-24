import 'dart:convert';

import 'package:chairluxeshop/models/product.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchProduct() async {
  const url = "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

  final response = await http.get(Uri.parse(url));
  final body = json.decode(response.body) as List;

  if (response.statusCode == 200) {
    List<Product> products =
        body.map((Prod) => Product.fromJson(Prod)).toList();
    return products;
  } else {
    throw Exception('fail to fetch');
  }
}
