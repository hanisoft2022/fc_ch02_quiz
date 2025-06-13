// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizManager _$QuizManagerFromJson(Map<String, dynamic> json) => _QuizManager(
  id: json['id'] as String?,
  problems: (json['problems'] as List<dynamic>)
      .map((e) => ProblemManager.fromJson(e as Map<String, dynamic>))
      .toList(),
  title: json['title'] as String,
  current: json['current'] == null
      ? null
      : ProblemManager.fromJson(json['current'] as Map<String, dynamic>),
);

Map<String, dynamic> _$QuizManagerToJson(_QuizManager instance) =>
    <String, dynamic>{
      'id': instance.id,
      'problems': instance.problems.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'current': instance.current?.toJson(),
    };
