// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleResponse _$SampleResponseFromJson(Map<String, dynamic> json) =>
    SampleResponse(
      userId: json['user_id'] as int,
      id: json['id'] as int,
      title: SampleResponse.readValue(json, 'title') as String,
      body: SampleResponse._fromJson(json['body']),
    );

Map<String, dynamic> _$SampleResponseToJson(SampleResponse instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': SampleResponse._toJson(instance.body),
    };
