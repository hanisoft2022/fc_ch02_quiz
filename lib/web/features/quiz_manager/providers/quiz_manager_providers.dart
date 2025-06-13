import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/quiz_manager_data_source.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_manager_providers.g.dart';

// * READ
@riverpod
QuizManagerDataSource quizManagerDataSource(Ref ref) => QuizManagerDataSource();

// * READ
@riverpod
Stream<List<QuizManager>> quizList(Ref ref) {
  return ref.watch(quizManagerDataSourceProvider).watchQuizzes();
}

// * WRITE
@riverpod
class QuizManagerController extends _$QuizManagerController {
  @override
  Future<void> build() async {}

  // * CREATE
  Future<void> addDummyQuiz() async {
    final quizManagerDataSource = ref.read(quizManagerDataSourceProvider);
    await quizManagerDataSource.addDummyQuizzes();
  }

  // * CREATE
  Future<void> addQuiz(QuizManager quiz) async {
    final quizManagerDataSource = ref.read(quizManagerDataSourceProvider);
    await quizManagerDataSource.addQuiz(quiz);
  }
}
