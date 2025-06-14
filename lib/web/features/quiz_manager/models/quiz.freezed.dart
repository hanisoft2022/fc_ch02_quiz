// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Quiz {

 String? get id; List<Problem> get problems; String get title; Problem? get current;@TimestampConverter() DateTime? get createdAt;
/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizCopyWith<Quiz> get copyWith => _$QuizCopyWithImpl<Quiz>(this as Quiz, _$identity);

  /// Serializes this Quiz to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Quiz&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.problems, problems)&&(identical(other.title, title) || other.title == title)&&(identical(other.current, current) || other.current == current)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(problems),title,current,createdAt);

@override
String toString() {
  return 'Quiz(id: $id, problems: $problems, title: $title, current: $current, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $QuizCopyWith<$Res>  {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) _then) = _$QuizCopyWithImpl;
@useResult
$Res call({
 String? id, List<Problem> problems, String title, Problem? current,@TimestampConverter() DateTime? createdAt
});


$ProblemCopyWith<$Res>? get current;

}
/// @nodoc
class _$QuizCopyWithImpl<$Res>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._self, this._then);

  final Quiz _self;
  final $Res Function(Quiz) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? problems = null,Object? title = null,Object? current = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,problems: null == problems ? _self.problems : problems // ignore: cast_nullable_to_non_nullable
as List<Problem>,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Problem?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $ProblemCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Quiz implements Quiz {
  const _Quiz({required this.id, required final  List<Problem> problems, required this.title, this.current, @TimestampConverter() this.createdAt}): _problems = problems;
  factory _Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

@override final  String? id;
 final  List<Problem> _problems;
@override List<Problem> get problems {
  if (_problems is EqualUnmodifiableListView) return _problems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_problems);
}

@override final  String title;
@override final  Problem? current;
@override@TimestampConverter() final  DateTime? createdAt;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizCopyWith<_Quiz> get copyWith => __$QuizCopyWithImpl<_Quiz>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Quiz&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._problems, _problems)&&(identical(other.title, title) || other.title == title)&&(identical(other.current, current) || other.current == current)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_problems),title,current,createdAt);

@override
String toString() {
  return 'Quiz(id: $id, problems: $problems, title: $title, current: $current, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$QuizCopyWith(_Quiz value, $Res Function(_Quiz) _then) = __$QuizCopyWithImpl;
@override @useResult
$Res call({
 String? id, List<Problem> problems, String title, Problem? current,@TimestampConverter() DateTime? createdAt
});


@override $ProblemCopyWith<$Res>? get current;

}
/// @nodoc
class __$QuizCopyWithImpl<$Res>
    implements _$QuizCopyWith<$Res> {
  __$QuizCopyWithImpl(this._self, this._then);

  final _Quiz _self;
  final $Res Function(_Quiz) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? problems = null,Object? title = null,Object? current = freezed,Object? createdAt = freezed,}) {
  return _then(_Quiz(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,problems: null == problems ? _self._problems : problems // ignore: cast_nullable_to_non_nullable
as List<Problem>,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Problem?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $ProblemCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

// dart format on
