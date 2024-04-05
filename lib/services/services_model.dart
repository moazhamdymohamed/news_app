import 'package:dio/dio.dart';
import 'package:news_app/models/Artical_model.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);

  Future<List<ArticalModel>> getTopheadline({required String category}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=698a560853d449298be883b8b4bc8e15&category=$category");

      Map<String, dynamic> jesonData = response.data;
      List<dynamic> articals = jesonData["articles"];
      List<ArticalModel> articalList = [];
      //هنا بحول  List of map  to List of articalmodel;
      //artical بمسابة map
      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromjeson(artical);
        articalList.add(articalModel);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
