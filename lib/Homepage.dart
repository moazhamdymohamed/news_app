// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:news_app/widget/News_List_view_Builder.dart';

import 'widget/catogry_listView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Catogry_listView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 18,
              ),
            ),
            const NewListViewBuilder(
              cattgory: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
