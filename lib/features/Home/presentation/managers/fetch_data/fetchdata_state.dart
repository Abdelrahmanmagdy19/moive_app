part of 'fetchdata_cubit.dart';

@immutable
sealed class FetchdataState {}

final class FetchdataInitial extends FetchdataState {}

final class FetchdataLoading extends FetchdataState {}

final class FetchdataSuccess extends FetchdataState {
  final List<HomeModel> homeModel;

  FetchdataSuccess({required this.homeModel});
}

final class FetchdataFailure extends FetchdataState {
  final String errorMessage;

  FetchdataFailure(this.errorMessage);
}
