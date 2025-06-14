// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_manager_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizDataSourceHash() => r'cdf9e7bc4bca598780ec1280be304a0d8dabfeea';

/// 퀴즈 데이터소스 Provider (Firestore 연동)
///
/// Copied from [quizDataSource].
@ProviderFor(quizDataSource)
final quizDataSourceProvider = AutoDisposeProvider<QuizDataSource>.internal(
  quizDataSource,
  name: r'quizDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef QuizDataSourceRef = AutoDisposeProviderRef<QuizDataSource>;
String _$quizListHash() => r'5f2d7570b70b1c9adcbd94353a1d990b0cd80a10';

/// 실시간 퀴즈 목록 스트림 Provider
///
/// Copied from [quizList].
@ProviderFor(quizList)
final quizListProvider = AutoDisposeStreamProvider<List<Quiz>>.internal(
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
typedef QuizListRef = AutoDisposeStreamProviderRef<List<Quiz>>;
String _$quizControllerHash() => r'e8f0336f67cf245e1afee7044db2264afb90f6f1';

/// 퀴즈 관련 비즈니스 로직 컨트롤러 (CRUD)
///
/// Copied from [QuizController].
@ProviderFor(QuizController)
final quizControllerProvider =
    AutoDisposeAsyncNotifierProvider<QuizController, void>.internal(
      QuizController.new,
      name: r'quizControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$quizControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$QuizController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
