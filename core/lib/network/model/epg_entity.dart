import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class EPGEntity {
	double start;
	double end;
	String title;

	EPGEntity(this.start, this.end, this.title);

}
