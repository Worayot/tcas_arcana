// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(scoreDataSource)
const scoreDataSourceProvider = ScoreDataSourceProvider._();

final class ScoreDataSourceProvider
    extends
        $FunctionalProvider<ScoreDataSource, ScoreDataSource, ScoreDataSource>
    with $Provider<ScoreDataSource> {
  const ScoreDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scoreDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scoreDataSourceHash();

  @$internal
  @override
  $ProviderElement<ScoreDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ScoreDataSource create(Ref ref) {
    return scoreDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScoreDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScoreDataSource>(value),
    );
  }
}

String _$scoreDataSourceHash() => r'88fd8a239f87da7756cb3a909ad499396746081f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
