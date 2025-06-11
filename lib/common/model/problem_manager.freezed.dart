// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProblemManager {

 int get index; TextEditingController get controller;
/// Create a copy of ProblemManager
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemManagerCopyWith<ProblemManager> get copyWith => _$ProblemManagerCopyWithImpl<ProblemManager>(this as ProblemManager, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemManager&&(identical(other.index, index) || other.index == index)&&(identical(other.controller, controller) || other.controller == controller));
}


@override
int get hashCode => Object.hash(runtimeType,index,controller);

@override
String toString() {
  return 'ProblemManager(index: $index, controller: $controller)';
}


}

/// @nodoc
abstract mixin class $ProblemManagerCopyWith<$Res>  {
  factory $ProblemManagerCopyWith(ProblemManager value, $Res Function(ProblemManager) _then) = _$ProblemManagerCopyWithImpl;
@useResult
$Res call({
 int index, TextEditingController controller
});




}
/// @nodoc
class _$ProblemManagerCopyWithImpl<$Res>
    implements $ProblemManagerCopyWith<$Res> {
  _$ProblemManagerCopyWithImpl(this._self, this._then);

  final ProblemManager _self;
  final $Res Function(ProblemManager) _then;

/// Create a copy of ProblemManager
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? controller = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}

}


/// @nodoc


class _ProblemManager implements ProblemManager {
  const _ProblemManager({required this.index, required this.controller});
  

@override final  int index;
@override final  TextEditingController controller;

/// Create a copy of ProblemManager
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemManagerCopyWith<_ProblemManager> get copyWith => __$ProblemManagerCopyWithImpl<_ProblemManager>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemManager&&(identical(other.index, index) || other.index == index)&&(identical(other.controller, controller) || other.controller == controller));
}


@override
int get hashCode => Object.hash(runtimeType,index,controller);

@override
String toString() {
  return 'ProblemManager(index: $index, controller: $controller)';
}


}

/// @nodoc
abstract mixin class _$ProblemManagerCopyWith<$Res> implements $ProblemManagerCopyWith<$Res> {
  factory _$ProblemManagerCopyWith(_ProblemManager value, $Res Function(_ProblemManager) _then) = __$ProblemManagerCopyWithImpl;
@override @useResult
$Res call({
 int index, TextEditingController controller
});




}
/// @nodoc
class __$ProblemManagerCopyWithImpl<$Res>
    implements _$ProblemManagerCopyWith<$Res> {
  __$ProblemManagerCopyWithImpl(this._self, this._then);

  final _ProblemManager _self;
  final $Res Function(_ProblemManager) _then;

/// Create a copy of ProblemManager
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? controller = null,}) {
  return _then(_ProblemManager(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,controller: null == controller ? _self.controller : controller // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}


}

// dart format on
