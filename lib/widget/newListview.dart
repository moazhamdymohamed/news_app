// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:news_app/models/Artical_model.dart';
import 'package:news_app/widget/News_tile.dart';

class NewListViews extends StatelessWidget {
  NewListViews({super.key, required this.articlas});

  // ليست فاضية هيرجع فيها البيانات المتخزنة في Articals modelوبرضو عشان استخدمها واخد منها البيانات
  List<ArticalModel> articlas;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articlas.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 22,
        ),
        child: NewsTile(
          articalModel: articlas[index],
        ),
      );
    }));
  }
}
