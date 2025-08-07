// score_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_response.freezed.dart';
part 'score_response.g.dart';

@freezed
abstract class ScoreResponse with _$ScoreResponse {
  const factory ScoreResponse({required Header header}) = _ScoreResponse;

  factory ScoreResponse.fromJson(Map<String, dynamic> json) => _$ScoreResponseFromJson(json);
}

@freezed
abstract class Header with _$Header {
  const factory Header({required String code, required String desc}) = _Header;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}
