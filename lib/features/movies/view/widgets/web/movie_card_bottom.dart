import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart' show CustomColor, TextExtention;
import 'package:netflix_home/features/movies/model/model.dart';

class MovieCardBottom extends StatelessWidget {
  final MovieModel movie;

  const MovieCardBottom({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: CustomColor.dark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 35,
                height: 35,
                child: IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    iconSize: 25.0,
                    foregroundColor: CustomColor.dark,
                    backgroundColor: Colors.white,
                    side: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              SizedBox(
                width: 35,
                height: 35,
                child: IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    iconSize: 20.0,
                    foregroundColor: Colors.white,
                    side: const BorderSide(width: 2, color: Colors.white70),
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              SizedBox(
                width: 35,
                height: 35,
                child: IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    iconSize: 16.0,
                    foregroundColor: Colors.white,
                    side: const BorderSide(width: 2, color: Colors.white70),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 35,
                height: 35,
                child: IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    iconSize: 22.0,
                    foregroundColor: Colors.white,
                    side: const BorderSide(width: 2, color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Text(
                'IMDb: ${movie.imdbRating.toDouble().toString()}',
                style: TextStyle(
                  color: Colors.green.shade700,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                movie.length,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8.0),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white60),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    movie.classification,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          RichText(
            text: const TextSpan().list(movie.genres),
          ),
        ],
      ),
    );
  }
}
