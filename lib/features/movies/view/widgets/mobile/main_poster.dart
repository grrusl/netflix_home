import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart' show TextExtention, CustomColor;
import 'package:netflix_home/features/movies/model/model.dart' show MovieModel;

class MainPoster extends StatelessWidget {
  final MovieModel? poster;

  const MainPoster({super.key, this.poster});

  @override
  Widget build(BuildContext context) {
    final image = poster != null
        ? DecorationImage(
            image: NetworkImage(poster!.poster),
            fit: BoxFit.cover,
          )
        : null;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        image: image,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 1,
          color: CustomColor.darkGray,
        ),
      ),
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 6 / 9,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: poster == null
              ? null
              : Stack(
                  children: [
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RichText(
                              text: const TextSpan().list(
                                poster!.genres,
                                Colors.red,
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: FilledButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.play_arrow),
                                    label: const Text('Play'),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: FilledButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    label: const Text('My List'),
                                    style: FilledButton.styleFrom(
                                      backgroundColor: CustomColor.gray,
                                      foregroundColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
