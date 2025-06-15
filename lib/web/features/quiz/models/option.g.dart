// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  id: json['id'] as String?,
  index: (json['index'] as num).toInt(),
  text: json['text'] as String,
  isCorrectOption: json['isCorrectOption'] as bool,
);

Map<String, dynamic> _$OptionToJson(_Option instance) => <String, dynamic>{
  'id': instance.id,
  'index': instance.index,
  'text': instance.text,
  'isCorrectOption': instance.isCorrectOption,
};
