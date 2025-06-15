// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  index: (json['index'] as num).toInt(),
  text: json['text'] as String,
  correctOption: json['correctOption'] as bool,
);

Map<String, dynamic> _$OptionToJson(_Option instance) => <String, dynamic>{
  'index': instance.index,
  'text': instance.text,
  'correctOption': instance.correctOption,
};
