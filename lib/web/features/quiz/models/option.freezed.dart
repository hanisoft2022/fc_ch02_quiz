// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Option {

 String? get id; int get index; String get text; bool get isCorrectOption;
/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionCopyWith<Option> get copyWith => _$OptionCopyWithImpl<Option>(this as Option, _$identity);

  /// Serializes this Option to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Option&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.text, text) || other.text == text)&&(identical(other.isCorrectOption, isCorrectOption) || other.isCorrectOption == isCorrectOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,index,text,isCorrectOption);

@override
String toString() {
  return 'Option(id: $id, index: $index, text: $text, isCorrectOption: $isCorrectOption)';
}


}

/// @nodoc
abstract mixin class $OptionCopyWith<$Res>  {
  factory $OptionCopyWith(Option value, $Res Function(Option) _then) = _$OptionCopyWithImpl;
@useResult
$Res call({
 String? id, int index, String text, bool isCorrectOption
});




}
/// @nodoc
class _$OptionCopyWithImpl<$Res>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._self, this._then);

  final Option _self;
  final $Res Function(Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? index = null,Object? text = null,Object? isCorrectOption = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isCorrectOption: null == isCorrectOption ? _self.isCorrectOption : isCorrectOption // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Option implements Option {
  const _Option({this.id, required this.index, required this.text, required this.isCorrectOption});
  factory _Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

@override final  String? id;
@override final  int index;
@override final  String text;
@override final  bool isCorrectOption;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionCopyWith<_Option> get copyWith => __$OptionCopyWithImpl<_Option>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Option&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.text, text) || other.text == text)&&(identical(other.isCorrectOption, isCorrectOption) || other.isCorrectOption == isCorrectOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,index,text,isCorrectOption);

@override
String toString() {
  return 'Option(id: $id, index: $index, text: $text, isCorrectOption: $isCorrectOption)';
}


}

/// @nodoc
abstract mixin class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) _then) = __$OptionCopyWithImpl;
@override @useResult
$Res call({
 String? id, int index, String text, bool isCorrectOption
});




}
/// @nodoc
class __$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(this._self, this._then);

  final _Option _self;
  final $Res Function(_Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? index = null,Object? text = null,Object? isCorrectOption = null,}) {
  return _then(_Option(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isCorrectOption: null == isCorrectOption ? _self.isCorrectOption : isCorrectOption // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
