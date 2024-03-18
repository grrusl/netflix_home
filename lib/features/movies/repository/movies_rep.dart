import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:netflix_home/core/constants/api_constants.dart';
import 'package:netflix_home/core/api/data_state.dart';
import 'package:netflix_home/features/movies/model/model.dart';

abstract class MovieRepo {
  Future<DataState<List<MovieModel>>> getMovies();
}

class MovieRepoImpl implements MovieRepo {
  @override
  Future<DataState<List<MovieModel>>> getMovies() async {
    try {
      final String json = await rootBundle.loadString(moviesUrl);
      final List<dynamic> resp = jsonDecode(json)['movies'];
      return DataSuccess(resp.map((v) => MovieModel.fromJson(v)).toList());
    } catch (e) {
      return const DataError('Something went wrong');
    }
  }
}
