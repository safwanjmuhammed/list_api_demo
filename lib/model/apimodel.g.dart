// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apimodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiModel _$ApiModelFromJson(Map<String, dynamic> json) => ApiModel(
      json['albumId'] as int,
      json['id'] as int,
      json['title'] as String,
      json['url'] as String,
      json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$ApiModelToJson(ApiModel instance) => <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
