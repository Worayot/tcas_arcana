// score_repository.dart

import 'package:options/features/scores/data/score_data_source.dart';
import 'package:options/features/scores/models/score_response.dart';
import 'package:options/features/scores/models/scores.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'score_repository.g.dart';

@riverpod
ScoreRepository scoreRepository(Ref ref) {
  return ScoreRepository(ref.watch(scoreDataSourceProvider));
}

class ScoreRepository {
  final ScoreDataSource scoreDataSource;
  ScoreRepository(this.scoreDataSource);

  Future<ScoreResponse> postScores({required ScoreModel scores}) async {
    return scoreDataSource.postScores(scores: scores).then((value) => ScoreResponse.fromJson(value));
  }
}
