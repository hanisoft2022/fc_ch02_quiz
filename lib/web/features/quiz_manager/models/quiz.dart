import 'package:ch02_realtime_quiz/common/converters/timestamp_converter.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/option.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
abstract class Quiz with _$Quiz {
  @JsonSerializable(explicitToJson: true)
  const factory Quiz({
    required String? id,
    required String title,
    required List<Option> options,
    Option? current,
    @TimestampConverter() DateTime? createdAt,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}
