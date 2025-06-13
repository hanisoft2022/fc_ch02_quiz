import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_manager.freezed.dart';

part 'problem_manager.g.dart';

@freezed
abstract class ProblemManager with _$ProblemManager {
  const factory ProblemManager({
    required int index,
    required String question,
    required List<String> options,
    required int correctIndex,
  }) = _ProblemManager;

  factory ProblemManager.fromJson(Map<String, dynamic> json) => _$ProblemManagerFromJson(json);
}
