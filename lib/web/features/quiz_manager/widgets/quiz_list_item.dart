import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizListItem extends StatelessWidget {
  final QuizManager quiz;
  const QuizListItem({required this.quiz, super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: quiz.title.text.make(),
      children: quiz.problems.map((e) => ListTile(title: e.question.text.make())).toList(),
    );
  }
}
