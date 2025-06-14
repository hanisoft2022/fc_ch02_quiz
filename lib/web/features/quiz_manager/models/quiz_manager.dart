import 'package:ch02_realtime_quiz/common/converters/timestamp_converter.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/problem_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'quiz_manager.freezed.dart';
part 'quiz_manager.g.dart';

@freezed
abstract class QuizManager with _$QuizManager {
  @JsonSerializable(explicitToJson: true)
  const factory QuizManager({
    required String? id,
    required List<ProblemManager> problems,
    required String title,
    ProblemManager? current,
    @TimestampConverter() DateTime? createdAt,
  }) = _QuizManager;

  factory QuizManager.fromJson(Map<String, dynamic> json) => _$QuizManagerFromJson(json);
}
