// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
    json['id'] as int,
    json['title'] as String,
    json['overview'] as String,
    json['release_date'] as String,
    (json['genre_ids'] as List).map((e) => e as int).toList(),
    (json['vote_average'] as num).toDouble(),
    (json['popularity'] as num).toDouble(),
    json['poster_path'] as String,
    json['backdrop_path'] as String,
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'genre_ids': instance.genre_ids,
      'vote_average': instance.vote_average,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };
