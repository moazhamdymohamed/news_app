// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'catogry_card.dart';

class Catogry_listView extends StatelessWidget {
  Catogry_listView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
      images: 'assets/images/sports.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      images: 'assets/images/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      images: 'assets/images/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      images: 'assets/images/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      images: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      images: 'assets/images/generalll.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      images: 'assets/images/general.avif',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
    
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Categroy_card(
            category: categories[index],
          );
        },
      ),
    );
  }
}
