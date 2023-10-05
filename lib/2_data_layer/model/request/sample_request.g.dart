// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleRequest _$SampleRequestFromJson(Map<String, dynamic> json) =>
    SampleRequest(
      value: json['value'] as String,
      user: UserPayload.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SampleRequestToJson(SampleRequest instance) =>
    <String, dynamic>{
      'value': instance.value,
      'user': instance.user,
    };
