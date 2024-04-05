import 'package:flutter/material.dart';
import 'package:news_app/models/Artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});

  // عشان استخدم البيانات بتاعتها
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          //  بنعمل check لو الصورة لا تساوي نا اعرض الصورة ال جيالك غير كدا اعرض الديفولت ال انا حططها
          child: articalModel.image != null
              ? Image.network(
                  articalModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
              : Image.asset(
                  "assets/images/health.avif",
                ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.subTitle ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
