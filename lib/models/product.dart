
import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final double rating;
  final String categoryId;
  final List<Color> colors;
  final List<String> sizes;
  final bool isNew;
  final int reviewCount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.rating,
    required this.categoryId,
    this.colors = const [],
    this.sizes = const [],
    this.isNew = false,
    this.reviewCount = 0,
  });
}
