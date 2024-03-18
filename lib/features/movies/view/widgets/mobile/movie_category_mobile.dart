import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart' show Fonts;
import 'package:netflix_home/features/movies/model/model.dart' show MovieModel;
import 'movie_single.dart';

class MovieCategoryMobile extends StatelessWidget {
  final String title;
  final List<MovieModel> category;

  const MovieCategoryMobile({
    super.key,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(title, style: Fonts.title),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieSingleMobile(
                  isFirst: index == 0,
                  movie: category[index],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
