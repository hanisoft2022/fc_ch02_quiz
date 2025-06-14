import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/quiz_manager_data_source.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_manager_providers.g.dart';

// * READ
/// 퀴즈 데이터소스 Provider (Firestore 연동)
@riverpod
QuizManagerDataSource quizManagerDataSource(Ref ref) => QuizManagerDataSource();

// * READ
/// 실시간 퀴즈 목록 스트림 Provider
@riverpod
Stream<List<QuizManager>> quizList(Ref ref) {
  return ref.watch(quizManagerDataSourceProvider).watchQuizzes();
}

// * WRITE
/// 퀴즈 관련 비즈니스 로직 컨트롤러 (CRUD)
@riverpod
class QuizManagerController extends _$QuizManagerController {
  @override
  Future<void> build() async {}

  // * CREATE
  /// 더미 퀴즈 여러 개 추가 (테스트/개발용)
  Future<void> addDummyQuiz() async {
    final quizManagerDataSource = ref.read(quizManagerDataSourceProvider);
    await quizManagerDataSource.addDummyQuizzes();
  }

  // * CREATE
  /// 새 퀴즈 추가
  /// [quiz] : 저장할 퀴즈 데이터
  Future<void> addQuiz(QuizManager quiz) async {
    final quizManagerDataSource = ref.read(quizManagerDataSourceProvider);
    await quizManagerDataSource.addQuiz(quiz);
  }
}
