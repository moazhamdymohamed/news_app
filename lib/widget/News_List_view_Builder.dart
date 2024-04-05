import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/Artical_model.dart';
import 'package:news_app/services/services_model.dart';
import 'package:news_app/widget/newListview.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({super.key, required this.cattgory});
  final String cattgory;

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  // ليست فاضية هيرجع فيها البيانات المتخزنة في Articals modelوبرضو عشان استخدمها واخد منها البيانات
  var Future;
  @override
  void initState() {
    super.initState();
    Future = NewServices(Dio()).getTopheadline(category: widget.cattgory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: Future,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return NewListViews(articlas: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Opps There an erro, try later"),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
}
