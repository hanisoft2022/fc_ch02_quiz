import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem.freezed.dart';
part 'problem.g.dart';

@freezed
abstract class Problem with _$Problem {
  const factory Problem({
    required int index,
    required String question,
    required List<String> options,
    required int correctIndex,
  }) = _Problem;

  factory Problem.fromJson(Map<String, dynamic> json) => _$ProblemFromJson(json);
}
