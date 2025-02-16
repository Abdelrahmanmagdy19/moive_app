import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moive_app/features/Home/presentation/managers/fetch_data/fetchdata_cubit.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/image_movie.dart';

class CustomListViewIImage extends StatelessWidget {
  const CustomListViewIImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchdataCubit, FetchdataState>(
      builder: (context, state) {
        if (state is FetchdataSuccess) {
          return SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.homeModel.length,
              itemBuilder: (context, index) => IMageMovie(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500${state.homeModel[index].imageUrl}",
                originalTitle: state.homeModel[index].originalTitle,
                releaseDate: state.homeModel[index].releaseDate,
                overview: state.homeModel[index].overview,
              ),
            ),
          );
        } else if (state is FetchdataFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
