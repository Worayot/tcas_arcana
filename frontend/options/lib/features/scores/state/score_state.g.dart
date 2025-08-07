// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ScoreState)
const scoreStateProvider = ScoreStateProvider._();

final class ScoreStateProvider
    extends $AsyncNotifierProvider<ScoreState, ScoreResponse> {
  const ScoreStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scoreStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scoreStateHash();

  @$internal
  @override
  ScoreState create() => ScoreState();
}

String _$scoreStateHash() => r'7b57d0591ac5a5b7839af1ffc0e7e97a4d579245';

abstract class _$ScoreState extends $AsyncNotifier<ScoreResponse> {
  FutureOr<ScoreResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ScoreResponse>, ScoreResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ScoreResponse>, ScoreResponse>,
              AsyncValue<ScoreResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
