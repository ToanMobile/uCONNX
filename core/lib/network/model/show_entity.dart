import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class ShowEntity {
	String title;
	String url;

	ShowEntity();

}
