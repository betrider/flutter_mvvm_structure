import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_payload.g.dart';

@JsonSerializable(includeIfNull: false)
class UserPayload extends Equatable {
  final String name;
  final int age;

  const UserPayload({
    required this.name,
    required this.age,
  });

  factory UserPayload.fromJson(Map<String, dynamic> json) => _$UserPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UserPayloadToJson(this);

  @override
  List<Object> get props => [name, age];
}
