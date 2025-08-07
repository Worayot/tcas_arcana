// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(scoreRepository)
const scoreRepositoryProvider = ScoreRepositoryProvider._();

final class ScoreRepositoryProvider
    extends
        $FunctionalProvider<ScoreRepository, ScoreRepository, ScoreRepository>
    with $Provider<ScoreRepository> {
  const ScoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scoreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scoreRepositoryHash();

  @$internal
  @override
  $ProviderElement<ScoreRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ScoreRepository create(Ref ref) {
    return scoreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScoreRepository>(value),
    );
  }
}

String _$scoreRepositoryHash() => r'ba2577de23acf84c18e46fb9e4201b6e8ca8387f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
