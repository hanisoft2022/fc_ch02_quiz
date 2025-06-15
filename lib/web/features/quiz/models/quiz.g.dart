// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Quiz _$QuizFromJson(Map<String, dynamic> json) => _Quiz(
  id: json['id'] as String?,
  title: json['title'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => Option.fromJson(e as Map<String, dynamic>))
      .toList(),
  current: json['current'] == null
      ? null
      : Option.fromJson(json['current'] as Map<String, dynamic>),
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp?,
  ),
);

Map<String, dynamic> _$QuizToJson(_Quiz instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'options': instance.options.map((e) => e.toJson()).toList(),
  'current': instance.current?.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};
