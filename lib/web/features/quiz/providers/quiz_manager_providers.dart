import 'package:ch02_realtime_quiz/web/features/quiz/data/quiz_data_source.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/models/quiz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_manager_providers.g.dart';

// * READ
/// 퀴즈 데이터소스 Provider (Firestore 연동)
@riverpod
QuizDataSource quizDataSource(Ref ref) => QuizDataSource();

// * READ
/// 실시간 퀴즈 목록 스트림 Provider
@riverpod
Stream<List<Quiz>> watchQuizzes(Ref ref) {
  return ref.watch(quizDataSourceProvider).watchQuizzes();
}

// * READ
/// 실시간 퀴즈 목록 스트림 Provider
@riverpod
Stream<Quiz> watchQuizById(Ref ref, String id) {
  return ref.watch(quizDataSourceProvider).watchQuizById(id);
}

// * WRITE
/// 퀴즈 관련 비즈니스 로직 컨트롤러 (CRUD)
@riverpod
class QuizController extends _$QuizController {
  @override
  Future<void> build() async {}

  // * CREATE
  /// 더미 퀴즈 여러 개 추가 (테스트/개발용)
  Future<void> addDummyQuiz() async {
    final quizDataSource = ref.read(quizDataSourceProvider);
    await quizDataSource.addDummyQuizzes();
  }

  // * CREATE
  /// 새 퀴즈 추가
  /// [quiz] : 저장할 퀴즈 데이터
  Future<void> addQuiz(Quiz quiz) async {
    try {
      state = const AsyncValue.loading();
      await ref.read(quizDataSourceProvider).addQuiz(quiz);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
