import 'package:ch02_realtime_quiz/common/model/problem_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';

@freezed
abstract class QuizManager with _$QuizManager {
  const factory QuizManager({
    required List<ProblemManager> problems,
    required String title,
    ProblemManager? current,
  }) = _QuizManager;
}
