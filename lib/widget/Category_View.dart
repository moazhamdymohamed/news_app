import 'package:flutter/material.dart';
import 'package:news_app/widget/News_List_view_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewListViewBuilder(
            cattgory: category,
          ),
        ],
      ),
    );
  }
}
