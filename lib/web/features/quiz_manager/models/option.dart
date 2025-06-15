import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@freezed
abstract class Option with _$Option {
  const factory Option({required int index, required String text, required bool isCorrectOption}) =
      _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
