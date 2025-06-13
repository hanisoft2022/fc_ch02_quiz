// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizManager {

 String? get id; List<ProblemManager> get problems; String get title; ProblemManager? get current; DateTime? get createdAt;
/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizManagerCopyWith<QuizManager> get copyWith => _$QuizManagerCopyWithImpl<QuizManager>(this as QuizManager, _$identity);

  /// Serializes this QuizManager to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizManager&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.problems, problems)&&(identical(other.title, title) || other.title == title)&&(identical(other.current, current) || other.current == current)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(problems),title,current,createdAt);

@override
String toString() {
  return 'QuizManager(id: $id, problems: $problems, title: $title, current: $current, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $QuizManagerCopyWith<$Res>  {
  factory $QuizManagerCopyWith(QuizManager value, $Res Function(QuizManager) _then) = _$QuizManagerCopyWithImpl;
@useResult
$Res call({
 String? id, List<ProblemManager> problems, String title, ProblemManager? current, DateTime? createdAt
});


$ProblemManagerCopyWith<$Res>? get current;

}
/// @nodoc
class _$QuizManagerCopyWithImpl<$Res>
    implements $QuizManagerCopyWith<$Res> {
  _$QuizManagerCopyWithImpl(this._self, this._then);

  final QuizManager _self;
  final $Res Function(QuizManager) _then;

/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? problems = null,Object? title = null,Object? current = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,problems: null == problems ? _self.problems : problems // ignore: cast_nullable_to_non_nullable
as List<ProblemManager>,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as ProblemManager?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemManagerCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $ProblemManagerCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _QuizManager implements QuizManager {
  const _QuizManager({required this.id, required final  List<ProblemManager> problems, required this.title, this.current, this.createdAt}): _problems = problems;
  factory _QuizManager.fromJson(Map<String, dynamic> json) => _$QuizManagerFromJson(json);

@override final  String? id;
 final  List<ProblemManager> _problems;
@override List<ProblemManager> get problems {
  if (_problems is EqualUnmodifiableListView) return _problems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_problems);
}

@override final  String title;
@override final  ProblemManager? current;
@override final  DateTime? createdAt;

/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizManagerCopyWith<_QuizManager> get copyWith => __$QuizManagerCopyWithImpl<_QuizManager>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizManagerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizManager&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._problems, _problems)&&(identical(other.title, title) || other.title == title)&&(identical(other.current, current) || other.current == current)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_problems),title,current,createdAt);

@override
String toString() {
  return 'QuizManager(id: $id, problems: $problems, title: $title, current: $current, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$QuizManagerCopyWith<$Res> implements $QuizManagerCopyWith<$Res> {
  factory _$QuizManagerCopyWith(_QuizManager value, $Res Function(_QuizManager) _then) = __$QuizManagerCopyWithImpl;
@override @useResult
$Res call({
 String? id, List<ProblemManager> problems, String title, ProblemManager? current, DateTime? createdAt
});


@override $ProblemManagerCopyWith<$Res>? get current;

}
/// @nodoc
class __$QuizManagerCopyWithImpl<$Res>
    implements _$QuizManagerCopyWith<$Res> {
  __$QuizManagerCopyWithImpl(this._self, this._then);

  final _QuizManager _self;
  final $Res Function(_QuizManager) _then;

/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? problems = null,Object? title = null,Object? current = freezed,Object? createdAt = freezed,}) {
  return _then(_QuizManager(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,problems: null == problems ? _self._problems : problems // ignore: cast_nullable_to_non_nullable
as List<ProblemManager>,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as ProblemManager?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of QuizManager
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemManagerCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $ProblemManagerCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

// dart format on
