import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:moive_app/features/Home/data/home_model.dart';
import 'package:moive_app/features/Home/data/home_reop_impl.dart';

part 'fetchdata_state.dart';

class FetchdataCubit extends Cubit<FetchdataState> {
  FetchdataCubit() : super(FetchdataInitial());

  Future<void> fetchData() async {
    emit(FetchdataLoading());
    try {
      List<HomeModel> movies = await HomeRepoImpl(Dio()).fetchData();
      emit(FetchdataSuccess(homeModel: movies));
    } catch (e) {
      emit(FetchdataFailure(e.toString()));
    }
  }
}
