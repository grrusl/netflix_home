import 'dart:collection';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_home/features/movies/model/model.dart';
import 'package:netflix_home/features/movies/repository/movies_rep.dart';

class MoviesViewModel extends ChangeNotifier {
  final MovieRepo movieRepo;

  MoviesViewModel(this.movieRepo);

  // Use SplayTreeMap to sort the keys
  final SplayTreeMap<String, List<MovieModel>> _movies = SplayTreeMap();

  SplayTreeMap<String, List<MovieModel>> get movies => _movies;

  MovieModel? _randomPoster;

  MovieModel? get randomPoster => _randomPoster;

  Future<void> getMovies() async {
    final resp = await movieRepo.getMovies();

    if (resp.data != null) {
      final movies = resp.data;
      if (movies == null || movies.isEmpty) return;

      _randomPoster = _getRandom(movies);

      movies.sort((a, b) => b.imdbRating.compareTo(a.imdbRating));
      for (var m in movies) {
        for (var g in m.genres) {
          if (!_movies.containsKey(g)) {
            _movies[g] = [];
          }
          _movies[g]?.add(m);
        }
      }

      notifyListeners();
    }
  }

  MovieModel _getRandom(movies) {
    final rand = Random().nextInt(movies.length - 1);
    return movies[rand];
  }
}
