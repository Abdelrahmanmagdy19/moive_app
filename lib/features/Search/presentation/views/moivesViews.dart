import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MoviesView extends StatefulWidget {
  final String category;

  const MoviesView({super.key, required this.category});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  List<Map<String, dynamic>> movies = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    try {
      final response = await Dio().get(
        'https://api.themoviedb.org/3/discover/movie',
        queryParameters: {
          'api_key': '80e5b620999f4b39fc445ee5cdf51b94',
          'language': 'en-US',
          'with_genres': getGenreId(widget.category),
        },
      );

      setState(() {
        movies = List<Map<String, dynamic>>.from(response.data['results']);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  int getGenreId(String category) {
    switch (category.toLowerCase()) {
      case 'action':
        return 28;
      case 'drama':
        return 18;
      case 'comedy':
        return 35;
      case 'sci-fi':
        return 878;
      default:
        return 28;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.category} Movies")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : movies.isEmpty
              ? const Center(child: Text("No Movies Found"))
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 3,
                    ),
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      final movie = movies[index];
                      final imageUrl = movie['poster_path'] != null
                          ? "https://image.tmdb.org/t/p/w500${movie['poster_path']}"
                          : "https://via.placeholder.com/500x750.png?text=No+Image";

                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(imageUrl, fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
    );
  }
}
