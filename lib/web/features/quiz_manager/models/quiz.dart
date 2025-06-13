import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/problem_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
abstract class QuizManager with _$QuizManager {
  @JsonSerializable(explicitToJson: true)
  const factory QuizManager({
    required String? id,
    required List<ProblemManager> problems,
    required String title,
    ProblemManager? current,
  }) = _QuizManager;

  factory QuizManager.fromJson(Map<String, dynamic> json) => _$QuizManagerFromJson(json);
}
