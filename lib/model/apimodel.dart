import 'package:json_annotation/json_annotation.dart';

part 'apimodel.g.dart';

@JsonSerializable()
class ApiModel {
  ApiModel(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  @JsonKey(name: 'albumId')
  final int albumId;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'thumbnailUrl')
  final String thumbnailUrl;

  factory ApiModel.fromJson(Map<String, dynamic> json) =>
      _$ApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiModelToJson(this);
}
