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
String _$watchQuizzesHash() => r'2d73ae1bd6438ba3ba44fefe6d1d521c972627c3';

/// 실시간 퀴즈 목록 스트림 Provider
///
/// Copied from [watchQuizzes].
@ProviderFor(watchQuizzes)
final watchQuizzesProvider = AutoDisposeStreamProvider<List<Quiz>>.internal(
  watchQuizzes,
  name: r'watchQuizzesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchQuizzesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WatchQuizzesRef = AutoDisposeStreamProviderRef<List<Quiz>>;
String _$watchQuizByIdHash() => r'3e10ee9b8e2e8706cbb1d731e0abbccefa084ea3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 실시간 퀴즈 목록 스트림 Provider
///
/// Copied from [watchQuizById].
@ProviderFor(watchQuizById)
const watchQuizByIdProvider = WatchQuizByIdFamily();

/// 실시간 퀴즈 목록 스트림 Provider
///
/// Copied from [watchQuizById].
class WatchQuizByIdFamily extends Family<AsyncValue<Quiz>> {
  /// 실시간 퀴즈 목록 스트림 Provider
  ///
  /// Copied from [watchQuizById].
  const WatchQuizByIdFamily();

  /// 실시간 퀴즈 목록 스트림 Provider
  ///
  /// Copied from [watchQuizById].
  WatchQuizByIdProvider call(String id) {
    return WatchQuizByIdProvider(id);
  }

  @override
  WatchQuizByIdProvider getProviderOverride(
    covariant WatchQuizByIdProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'watchQuizByIdProvider';
}

/// 실시간 퀴즈 목록 스트림 Provider
///
/// Copied from [watchQuizById].
class WatchQuizByIdProvider extends AutoDisposeStreamProvider<Quiz> {
  /// 실시간 퀴즈 목록 스트림 Provider
  ///
  /// Copied from [watchQuizById].
  WatchQuizByIdProvider(String id)
    : this._internal(
        (ref) => watchQuizById(ref as WatchQuizByIdRef, id),
        from: watchQuizByIdProvider,
        name: r'watchQuizByIdProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$watchQuizByIdHash,
        dependencies: WatchQuizByIdFamily._dependencies,
        allTransitiveDependencies:
            WatchQuizByIdFamily._allTransitiveDependencies,
        id: id,
      );

  WatchQuizByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<Quiz> Function(WatchQuizByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WatchQuizByIdProvider._internal(
        (ref) => create(ref as WatchQuizByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Quiz> createElement() {
    return _WatchQuizByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchQuizByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WatchQuizByIdRef on AutoDisposeStreamProviderRef<Quiz> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WatchQuizByIdProviderElement
    extends AutoDisposeStreamProviderElement<Quiz>
    with WatchQuizByIdRef {
  _WatchQuizByIdProviderElement(super.provider);

  @override
  String get id => (origin as WatchQuizByIdProvider).id;
}

String _$quizControllerHash() => r'b478a8056a4830335410fe1416087b10aaae20f0';

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
