import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable(nullable: false)
class Task extends Equatable {
  final int id;
  final String title;
  final String overview;
  final String release_date;
  final List<int> genre_ids;
  final double vote_average;
  final double popularity;
  final String poster_path;
  final String backdrop_path;

  Task(this.id, this.title, this.overview, this.release_date, this.genre_ids,
      this.vote_average, this.popularity, this.poster_path, this.backdrop_path);

  @override
  List<Object> get props => [
    id,
    title,
    overview,
    release_date,
    genre_ids,
    vote_average,
    popularity,
    poster_path,
    backdrop_path
  ];

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}