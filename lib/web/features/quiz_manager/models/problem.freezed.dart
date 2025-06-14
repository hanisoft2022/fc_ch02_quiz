// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Problem {

 int get index; String get question; List<String> get options; int get correctIndex;
/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemCopyWith<Problem> get copyWith => _$ProblemCopyWithImpl<Problem>(this as Problem, _$identity);

  /// Serializes this Problem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Problem&&(identical(other.index, index) || other.index == index)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.correctIndex, correctIndex) || other.correctIndex == correctIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,question,const DeepCollectionEquality().hash(options),correctIndex);

@override
String toString() {
  return 'Problem(index: $index, question: $question, options: $options, correctIndex: $correctIndex)';
}


}

/// @nodoc
abstract mixin class $ProblemCopyWith<$Res>  {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) _then) = _$ProblemCopyWithImpl;
@useResult
$Res call({
 int index, String question, List<String> options, int correctIndex
});




}
/// @nodoc
class _$ProblemCopyWithImpl<$Res>
    implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._self, this._then);

  final Problem _self;
  final $Res Function(Problem) _then;

/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? question = null,Object? options = null,Object? correctIndex = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctIndex: null == correctIndex ? _self.correctIndex : correctIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Problem implements Problem {
  const _Problem({required this.index, required this.question, required final  List<String> options, required this.correctIndex}): _options = options;
  factory _Problem.fromJson(Map<String, dynamic> json) => _$ProblemFromJson(json);

@override final  int index;
@override final  String question;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  int correctIndex;

/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemCopyWith<_Problem> get copyWith => __$ProblemCopyWithImpl<_Problem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Problem&&(identical(other.index, index) || other.index == index)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctIndex, correctIndex) || other.correctIndex == correctIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,question,const DeepCollectionEquality().hash(_options),correctIndex);

@override
String toString() {
  return 'Problem(index: $index, question: $question, options: $options, correctIndex: $correctIndex)';
}


}

/// @nodoc
abstract mixin class _$ProblemCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$ProblemCopyWith(_Problem value, $Res Function(_Problem) _then) = __$ProblemCopyWithImpl;
@override @useResult
$Res call({
 int index, String question, List<String> options, int correctIndex
});




}
/// @nodoc
class __$ProblemCopyWithImpl<$Res>
    implements _$ProblemCopyWith<$Res> {
  __$ProblemCopyWithImpl(this._self, this._then);

  final _Problem _self;
  final $Res Function(_Problem) _then;

/// Create a copy of Problem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? question = null,Object? options = null,Object? correctIndex = null,}) {
  return _then(_Problem(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctIndex: null == correctIndex ? _self.correctIndex : correctIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
