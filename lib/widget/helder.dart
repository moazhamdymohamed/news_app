// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/Artical_model.dart';
// import 'package:news_app/services/services_model.dart';
// import 'package:news_app/widget/News_tile.dart';

// class NewListViews extends StatefulWidget {
//   const NewListViews({super.key, required List<ArticalModel> articlas});

//   @override
//   State<NewListViews> createState() => _NewListViewsState();
// }

// class _NewListViewsState extends State<NewListViews> {
//   bool isLoading = true;
//   // ليست فاضية هيرجع فيها البيانات المتخزنة في Articals modelوبرضو عشان استخدمها واخد منها البيانات
//   List<ArticalModel> articlas = [];
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articlas = await NewServices(Dio()).getnews();
//     //استخدمنا setstateعشان تعمل reBuild للابلكيشن تاني
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//         delegate: SliverChildBuilderDelegate(childCount: articlas.length,
//             (context, index) {
//       return Padding(
//         padding: const EdgeInsets.only(
//           bottom: 22,
//         ),
//         child: NewsTile(
//           articalModel: articlas[index],
//         ),
//       );
//     }));
//   }
// }
