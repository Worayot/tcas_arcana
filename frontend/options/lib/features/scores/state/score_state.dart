// score_state.dart

import 'package:options/features/scores/models/score_response.dart';
import 'package:options/features/scores/models/scores.dart';
import 'package:options/features/scores/repository/score_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'score_state.g.dart';

@riverpod
class ScoreState extends _$ScoreState {
  @override
  Future<ScoreResponse> build() async {
    final ScoreModel scores = ScoreModel();

    final ScoreResponse response = await ref.watch(scoreRepositoryProvider).postScores(scores: scores);
    return response;
  }
}
