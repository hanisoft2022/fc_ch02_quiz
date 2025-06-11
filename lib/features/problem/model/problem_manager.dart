import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_manager.freezed.dart';

@freezed
abstract class ProblemManager with _$ProblemManager {
  const factory ProblemManager({required int index, required TextEditingController controller}) =
      _ProblemManager;
}
