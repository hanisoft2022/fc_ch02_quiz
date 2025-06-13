// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProblemManager _$ProblemManagerFromJson(Map<String, dynamic> json) =>
    _ProblemManager(
      index: (json['index'] as num).toInt(),
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctIndex: (json['correctIndex'] as num).toInt(),
    );

Map<String, dynamic> _$ProblemManagerToJson(_ProblemManager instance) =>
    <String, dynamic>{
      'index': instance.index,
      'question': instance.question,
      'options': instance.options,
      'correctIndex': instance.correctIndex,
    };
