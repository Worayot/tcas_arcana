// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScoreResponse _$ScoreResponseFromJson(Map<String, dynamic> json) =>
    _ScoreResponse(
      header: Header.fromJson(json['header'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreResponseToJson(_ScoreResponse instance) =>
    <String, dynamic>{'header': instance.header};

_Header _$HeaderFromJson(Map<String, dynamic> json) =>
    _Header(code: json['code'] as String, desc: json['desc'] as String);

Map<String, dynamic> _$HeaderToJson(_Header instance) => <String, dynamic>{
  'code': instance.code,
  'desc': instance.desc,
};
