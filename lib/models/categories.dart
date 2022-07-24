import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category {
  final String id, title, image;
  final dynamic numOfProducts;

  Category({
    required this.id,
    required this.title,
    required this.image,
    required this.numOfProducts,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProducts: json['numOfPro']);
  }

 
}
