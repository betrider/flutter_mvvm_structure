import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sample_response.g.dart';

@JsonSerializable(includeIfNull: false)
class SampleResponse extends Equatable {
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(includeFromJson: true, includeToJson: true)
  final int id;
  @JsonKey(readValue: readValue)
  final String title;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final String body;

  const SampleResponse({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory SampleResponse.fromJson(Map<String, dynamic> json) => _$SampleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SampleResponseToJson(this);

  /// 파라미터
  ///
  /// 데이터 전체(map), 고유키(key)
  static dynamic readValue(Map map, String key) {
    return map[key];
  }

  /// 파라미터
  ///
  /// json['body']
  static String _fromJson(dynamic json) {
    var result = json as String;
    return '$result:_fromJson';
  }

  /// 파라미터
  ///
  /// PostResponse._toJson(instance.body)
  static String _toJson(dynamic json) {
    var result = json as String;
    return '$result:_toJson';
  }

  @override
  List<Object> get props => [userId, id, title, body];
}
