import 'package:flutter/material.dart';
import 'package:netflix_home/features/movies/model/model.dart' show MovieModel;
import 'package:netflix_home/features/movies/view/widgets/mobile/widgets/details_hero.dart';

import 'widgets/details_navigation.dart';

class MovieSingleMobile extends StatefulWidget {
  final MovieModel movie;
  final bool isFirst;

  const MovieSingleMobile({
    super.key,
    required this.movie,
    required this.isFirst,
  });

  @override
  State<MovieSingleMobile> createState() => _MovieSingleState();
}

class _MovieSingleState extends State<MovieSingleMobile> {
  final UniqueKey tag = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.isFirst ? 10 : 0.0,
        right: 10,
      ),
      child: GestureDetector(
        onTap: () {
          showDetailsScreen(
            tag: tag,
            context: context,
            movie: widget.movie,
          );
        },
        child: Hero(
          tag: tag,
          flightShuttleBuilder: (
            BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,
          ) {
            return DetailsHero(
              poster: widget.movie.poster,
              animation: animation,
            );
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: DetailsHero(
              poster: widget.movie.poster,
              animation: const AlwaysStoppedAnimation(0.0),
            ),
          ),
        ),
      ),
    );
  }
}
