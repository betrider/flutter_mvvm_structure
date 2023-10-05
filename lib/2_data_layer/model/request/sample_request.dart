import 'package:equatable/equatable.dart';
import 'package:flutter_mvvm_structure/2_data_layer/model/payload/user_payload.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sample_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SampleRequest extends Equatable {
  final String value;
  final UserPayload user;

  const SampleRequest({
    required this.value,
    required this.user,
  });

  factory SampleRequest.fromJson(Map<String, dynamic> json) => _$SampleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SampleRequestToJson(this);

  @override
  List<Object> get props => [value];
}
