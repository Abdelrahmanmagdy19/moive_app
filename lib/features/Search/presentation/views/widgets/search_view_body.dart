import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moive_app/features/Home/presentation/views/widgets/image_movie.dart';
import 'package:moive_app/features/Search/presentation/managers/cubit/search_view_cubit.dart';
import 'package:moive_app/features/Search/presentation/views/widgets/cutom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 25),
          CustomTextField(
            onChanged: (value) {
              context.read<SearchViewCubit>().searchMovies(value);
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BlocBuilder<SearchViewCubit, SearchViewState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchFailure) {
                  return Center(child: Text(state.errorMessage));
                } else if (state is SearchSuccess) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: state.searchResults.length,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      final movie = state.searchResults[index];

                      if (movie.imageUrl.isEmpty) {
                        return const SizedBox
                            .shrink(); // إخفاء العنصر إذا لم يكن هناك صورة
                      }

                      return IMageMovie(
                        imageUrl: movie.imageUrl,
                        originalTitle: movie.originalTitle,
                        overview: movie.overview,
                        releaseDate: movie.releaseDate,
                      );
                    },
                  );
                } else {
                  return const Center(child: Text("Search"));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
