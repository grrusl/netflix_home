import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.g.dart';

part 'movie_model.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String backdrop,
    required List<String> cast,
    required String classification,
    required dynamic director,
    required List<String> genres,
    required String id,
    @JsonKey(name: 'imdb_rating') required double imdbRating,
    required String length,
    required String overview,
    required String poster,
    @JsonKey(name: 'released_on') required DateTime releasedOn,
    required String slug,
    required String title,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
