import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart' show Responsive, CustomAppBar;
import 'package:netflix_home/features/movies/movies.dart';
import 'package:provider/provider.dart';

import 'widgets/mobile/main_poster.dart';
import 'widgets/mobile/movie_category_mobile.dart';
import 'widgets/web/category_web.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MoviesViewModel>().getMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MoviesViewModel>();
    final poster = provider.randomPoster;
    final movies = provider.movies.entries.toList();

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(
            child: Responsive(
              mobile: MainPoster(poster: poster),
              desktop: const SizedBox(height: 50.0),
            ),
          ),
          SliverList.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext ctx, int index) {
              if (kIsWeb) {
                return MovieCategoryWeb(
                  title: movies[index].key,
                  category: movies[index].value,
                );
              } else {
                return MovieCategoryMobile(
                  title: movies[index].key,
                  category: movies[index].value,
                );
              }
            },
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.paddingOf(context).bottom,
            ),
          )
        ],
      ),
    );
  }
}
