import 'package:ch02_realtime_quiz/web/features/quiz/models/quiz.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/widgets/quiz_list_item.dart';
import 'package:flutter/material.dart';

class QuizListView extends StatelessWidget {
  final List<Quiz> quiz;
  const QuizListView({required this.quiz, super.key});

  @override
  Widget build(BuildContext context) {
    if (quiz.isEmpty) {
      return Center(child: Text('등록된 퀴즈가 없습니다.'));
    }
    return ListView.builder(
      itemCount: quiz.length,
      itemBuilder: (context, index) => QuizListItem(quiz: quiz[index]),
    );
  }
}
