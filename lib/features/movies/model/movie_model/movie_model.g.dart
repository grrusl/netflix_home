// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      backdrop: json['backdrop'] as String,
      cast: (json['cast'] as List<dynamic>).map((e) => e as String).toList(),
      classification: json['classification'] as String,
      director: json['director'],
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String,
      imdbRating: (json['imdb_rating'] as num).toDouble(),
      length: json['length'] as String,
      overview: json['overview'] as String,
      poster: json['poster'] as String,
      releasedOn: DateTime.parse(json['released_on'] as String),
      slug: json['slug'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'backdrop': instance.backdrop,
      'cast': instance.cast,
      'classification': instance.classification,
      'director': instance.director,
      'genres': instance.genres,
      'id': instance.id,
      'imdb_rating': instance.imdbRating,
      'length': instance.length,
      'overview': instance.overview,
      'poster': instance.poster,
      'released_on': instance.releasedOn.toIso8601String(),
      'slug': instance.slug,
      'title': instance.title,
    };
