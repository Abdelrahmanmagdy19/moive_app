import 'package:dio/dio.dart';
import 'package:moive_app/features/Home/data/home_model.dart';

class HomeRepoImpl {
  final Dio dio;

  HomeRepoImpl(this.dio);

  Future<List<HomeModel>> fetchData() async {
    Response response = await dio.get(
      'https://api.themoviedb.org/3/discover/movie',
      queryParameters: {
        'language': 'en-US',
        'sort_by': 'popularity.desc',
        'with_genres': '28',
        'api_key': '80e5b620999f4b39fc445ee5cdf51b94',
      },
    );

    List<dynamic> jsonData = response.data['results'];
    List<HomeModel> listData = [];
    for (var element in jsonData) {
      var data = HomeModel.fromJson(element);
      listData.add(data);
    }
    return listData;
  }
}
