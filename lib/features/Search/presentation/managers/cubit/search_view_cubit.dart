import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:moive_app/features/Search/data/search_model.dart';

part 'search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit() : super(SearchViewInitial());

  Future<void> searchMovies(String query) async {
    if (query.isEmpty) return;

    emit(SearchLoading());
    try {
      Response response = await Dio().get(
        'https://api.themoviedb.org/3/search/movie',
        queryParameters: {
          'query': query,
          'api_key': '80e5b620999f4b39fc445ee5cdf51b94',
          'language': 'en-US',
        },
      );

      List<dynamic> results = response.data['results'];
      List<SearchModel> movies =
          results.map((json) => SearchModel.fromJson(json)).toList();

      emit(SearchSuccess(searchResults: movies));
    } catch (e) {
      emit(SearchFailure(errorMessage: "Failed to load search results"));
    }
  }
}
