// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_manager_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizManagerDataSourceHash() =>
    r'adeb5ead1d164e597c0002c6e9060a9c4218d747';

/// See also [quizManagerDataSource].
@ProviderFor(quizManagerDataSource)
final quizManagerDataSourceProvider =
    AutoDisposeProvider<QuizManagerDataSource>.internal(
      quizManagerDataSource,
      name: r'quizManagerDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$quizManagerDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef QuizManagerDataSourceRef =
    AutoDisposeProviderRef<QuizManagerDataSource>;
String _$quizListHash() => r'79482587e82a60a512e5d2acfd4f2a95b877c8be';

/// See also [quizList].
@ProviderFor(quizList)
final quizListProvider = AutoDisposeStreamProvider<List<QuizManager>>.internal(
  quizList,
  name: r'quizListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef QuizListRef = AutoDisposeStreamProviderRef<List<QuizManager>>;
String _$quizManagerControllerHash() =>
    r'5b727ccfc0f85027875fca11a459d53d1ff8d3bb';

/// See also [QuizManagerController].
@ProviderFor(QuizManagerController)
final quizManagerControllerProvider =
    AutoDisposeAsyncNotifierProvider<QuizManagerController, void>.internal(
      QuizManagerController.new,
      name: r'quizManagerControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$quizManagerControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$QuizManagerController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
