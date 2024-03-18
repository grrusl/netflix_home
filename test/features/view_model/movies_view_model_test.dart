import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:netflix_home/core/api/data_state.dart';
import 'package:netflix_home/core/core.dart';
import 'package:netflix_home/features/movies/model/model.dart';
import 'package:netflix_home/features/movies/movies.dart';
import 'package:netflix_home/features/movies/repository/movies_rep.dart';

import 'movies_view_model_test.mocks.dart';

@GenerateMocks([MovieRepoImpl])
main() {
  late MockMovieRepoImpl movieRepoImpl;
  setUpAll(() {
    movieRepoImpl = MockMovieRepoImpl();
  });

  group('MoviesViewModel Test', () {
    test('Get movies correctly', () async {
      var viewModel = MoviesViewModel(movieRepoImpl);
      final List<MovieModel> mockMovies = [
        MovieModel(
          title: 'Movie 1',
          genres: ['B'],
          imdbRating: 2.5,
          backdrop: '',
          cast: [],
          classification: '',
          director: null,
          id: '123',
          length: '',
          overview: '',
          poster: '',
          releasedOn: DateTime.now(),
          slug: '',
        ),
        MovieModel(
          title: 'Movie 2',
          genres: ['A'],
          imdbRating: 5.5,
          backdrop: '',
          cast: [],
          classification: '',
          director: null,
          id: '234',
          length: '',
          overview: '',
          poster: '',
          releasedOn: DateTime.now(),
          slug: '',
        ),
      ];

      when(movieRepoImpl.getMovies())
          .thenAnswer((_) async => DataSuccess(mockMovies));

      await viewModel.getMovies();
      expect(viewModel.movies.length, equals(2));
      expect(viewModel.movies.values.first.first.title, equals('Movie 2'));
      expect(viewModel.randomPoster, isNotNull);
    });

    test('Get movies with error', () async {
      var viewModel = MoviesViewModel(movieRepoImpl);
      when(movieRepoImpl.getMovies())
          .thenAnswer((_) async => const DataError(''));

      await viewModel.getMovies();
      expect(viewModel.movies.isEmpty, isTrue);
      expect(viewModel.randomPoster, isNull);
    });
  });
}
