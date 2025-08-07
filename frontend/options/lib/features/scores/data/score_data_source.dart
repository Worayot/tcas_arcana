// score_data_source.dart

import 'package:dio/dio.dart';
import 'package:options/features/scores/models/scores.dart';
import 'package:options/global.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'score_data_source.g.dart';

@riverpod
ScoreDataSource scoreDataSource(Ref ref) {
  return ScoreDataSourceImpl();
}

abstract class ScoreDataSource {
  Future<Map<String, dynamic>> postScores({required ScoreModel scores});
}

class ScoreDataSourceImpl extends ScoreDataSource {
  final Dio _dio = Dio();

  @override
  Future<Map<String, dynamic>> postScores({required ScoreModel scores}) async {
    final backendUrl = GlobalState.backend;
    final url = '$backendUrl/get_hope';

    try {
      final response = await _dio.post(
        url,
        data: scores.toJson(), // 👈 make sure this is a Map<String, dynamic>
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return {'statusCode': response.statusCode, 'response': response.data};
    } catch (e) {
      return {'statusCode': 500, 'response': 'Error: $e'};
    }
  }
}
