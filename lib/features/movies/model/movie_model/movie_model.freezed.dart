// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String get backdrop => throw _privateConstructorUsedError;
  List<String> get cast => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;
  dynamic get director => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_rating')
  double get imdbRating => throw _privateConstructorUsedError;
  String get length => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_on')
  DateTime get releasedOn => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String backdrop,
      List<String> cast,
      String classification,
      dynamic director,
      List<String> genres,
      String id,
      @JsonKey(name: 'imdb_rating') double imdbRating,
      String length,
      String overview,
      String poster,
      @JsonKey(name: 'released_on') DateTime releasedOn,
      String slug,
      String title});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop = null,
    Object? cast = null,
    Object? classification = null,
    Object? director = freezed,
    Object? genres = null,
    Object? id = null,
    Object? imdbRating = null,
    Object? length = null,
    Object? overview = null,
    Object? poster = null,
    Object? releasedOn = null,
    Object? slug = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      backdrop: null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as dynamic,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imdbRating: null == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      releasedOn: null == releasedOn
          ? _value.releasedOn
          : releasedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backdrop,
      List<String> cast,
      String classification,
      dynamic director,
      List<String> genres,
      String id,
      @JsonKey(name: 'imdb_rating') double imdbRating,
      String length,
      String overview,
      String poster,
      @JsonKey(name: 'released_on') DateTime releasedOn,
      String slug,
      String title});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop = null,
    Object? cast = null,
    Object? classification = null,
    Object? director = freezed,
    Object? genres = null,
    Object? id = null,
    Object? imdbRating = null,
    Object? length = null,
    Object? overview = null,
    Object? poster = null,
    Object? releasedOn = null,
    Object? slug = null,
    Object? title = null,
  }) {
    return _then(_$MovieModelImpl(
      backdrop: null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as dynamic,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imdbRating: null == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      releasedOn: null == releasedOn
          ? _value.releasedOn
          : releasedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {required this.backdrop,
      required final List<String> cast,
      required this.classification,
      required this.director,
      required final List<String> genres,
      required this.id,
      @JsonKey(name: 'imdb_rating') required this.imdbRating,
      required this.length,
      required this.overview,
      required this.poster,
      @JsonKey(name: 'released_on') required this.releasedOn,
      required this.slug,
      required this.title})
      : _cast = cast,
        _genres = genres;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final String backdrop;
  final List<String> _cast;
  @override
  List<String> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  final String classification;
  @override
  final dynamic director;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String id;
  @override
  @JsonKey(name: 'imdb_rating')
  final double imdbRating;
  @override
  final String length;
  @override
  final String overview;
  @override
  final String poster;
  @override
  @JsonKey(name: 'released_on')
  final DateTime releasedOn;
  @override
  final String slug;
  @override
  final String title;

  @override
  String toString() {
    return 'MovieModel(backdrop: $backdrop, cast: $cast, classification: $classification, director: $director, genres: $genres, id: $id, imdbRating: $imdbRating, length: $length, overview: $overview, poster: $poster, releasedOn: $releasedOn, slug: $slug, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.releasedOn, releasedOn) ||
                other.releasedOn == releasedOn) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdrop,
      const DeepCollectionEquality().hash(_cast),
      classification,
      const DeepCollectionEquality().hash(director),
      const DeepCollectionEquality().hash(_genres),
      id,
      imdbRating,
      length,
      overview,
      poster,
      releasedOn,
      slug,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final String backdrop,
      required final List<String> cast,
      required final String classification,
      required final dynamic director,
      required final List<String> genres,
      required final String id,
      @JsonKey(name: 'imdb_rating') required final double imdbRating,
      required final String length,
      required final String overview,
      required final String poster,
      @JsonKey(name: 'released_on') required final DateTime releasedOn,
      required final String slug,
      required final String title}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  String get backdrop;
  @override
  List<String> get cast;
  @override
  String get classification;
  @override
  dynamic get director;
  @override
  List<String> get genres;
  @override
  String get id;
  @override
  @JsonKey(name: 'imdb_rating')
  double get imdbRating;
  @override
  String get length;
  @override
  String get overview;
  @override
  String get poster;
  @override
  @JsonKey(name: 'released_on')
  DateTime get releasedOn;
  @override
  String get slug;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
