part of 'search_view_cubit.dart';

@immutable
sealed class SearchViewState {}

final class SearchViewInitial extends SearchViewState {}

class SearchLoading extends SearchViewState {}

class SearchSuccess extends SearchViewState {
  final List<SearchModel> searchResults;

  SearchSuccess({required this.searchResults});
}

class SearchFailure extends SearchViewState {
  final String errorMessage;

  SearchFailure({required this.errorMessage});
}
