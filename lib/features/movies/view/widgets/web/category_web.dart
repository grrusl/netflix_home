import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart';
import 'package:netflix_home/features/movies/model/model.dart';

import 'movie_item_preview.dart';

class MovieCategoryWeb extends StatelessWidget {
  final String title;
  final List<MovieModel> category;

  const MovieCategoryWeb({
    super.key,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final (size, heigth) = getMovieWidth(context);

    return SizedBox(
      height: heigth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: Responsive.isDesktop(context) ? 55 : 15,
            ),
            child: Text(title, style: Fonts.title),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: PageWidget(
              count: category.length,
              contentWidth: size.width * getRatio(context),
              itemBuilder: (BuildContext context, int index) {
                final movie = MovieItemPreview(
                  movie: category[index],
                  size: size,
                );
                if (index == 0 || index == category.length - 1) {
                  return Row(
                    children: [
                      if (index == 0) const SizedBox(width: 50.0),
                      movie,
                      if (index == category.length - 1)
                        const SizedBox(width: 50.0),
                    ],
                  );
                }
                return movie;
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
