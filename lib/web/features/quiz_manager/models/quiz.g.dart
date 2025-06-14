// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Quiz _$QuizFromJson(Map<String, dynamic> json) => _Quiz(
  id: json['id'] as String?,
  problems: (json['problems'] as List<dynamic>)
      .map((e) => Problem.fromJson(e as Map<String, dynamic>))
      .toList(),
  title: json['title'] as String,
  current: json['current'] == null
      ? null
      : Problem.fromJson(json['current'] as Map<String, dynamic>),
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp?,
  ),
);

Map<String, dynamic> _$QuizToJson(_Quiz instance) => <String, dynamic>{
  'id': instance.id,
  'problems': instance.problems.map((e) => e.toJson()).toList(),
  'title': instance.title,
  'current': instance.current?.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};
