import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart'
    show IconTextButton, CustomColor, Fonts;
import 'package:netflix_home/features/movies/model/model.dart' show MovieModel;

class DetailsScreen extends StatelessWidget {
  final MovieModel movie;
  final UniqueKey tag;

  const DetailsScreen({
    super.key,
    required this.movie,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Hero(
              tag: tag,
              child: const SizedBox.expand(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: CustomColor.darkGray,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        movie.backdrop,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 34,
                            height: 34,
                            child: IconButton.filledTonal(
                              style: IconButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor:
                                    CustomColor.dark.withOpacity(0.8),
                                foregroundColor: Colors.white70,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(12.0),
                    children: [
                      Text(movie.title, style: Fonts.title),
                      Row(
                        children: [
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
                                decoration: const BoxDecoration(
                                  color: Colors.white24,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 3.0,
                                  ),
                                  child: Text(
                                    movie.classification,
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow),
                        label: const Text(
                          'Play',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: FilledButton.styleFrom(),
                      ),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.download),
                        label: const Text(
                          'Download',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: FilledButton.styleFrom(
                          backgroundColor: CustomColor.gray,
                          foregroundColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        movie.overview,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Cast: ${movie.cast.join(', ')}',
                        style: const TextStyle(color: Colors.white38),
                      ),
                      Text(
                        'Creator: ${movie.director}',
                        style: const TextStyle(color: Colors.white38),
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        children: [
                          SizedBox(width: 20.0),
                          IconTextButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 34,
                            ),
                            label: "My list",
                          ),
                          SizedBox(width: 50.0),
                          IconTextButton(
                            icon: Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                            label: "Rate",
                          ),
                          SizedBox(width: 50.0),
                          IconTextButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 28,
                            ),
                            label: "Share",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
