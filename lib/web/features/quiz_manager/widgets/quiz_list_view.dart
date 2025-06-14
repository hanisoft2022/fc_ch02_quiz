import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/widgets/quiz_list_item.dart';
import 'package:flutter/material.dart';

class QuizListView extends StatelessWidget {
  final List<QuizManager> quizManagers;
  const QuizListView({required this.quizManagers, super.key});

  @override
  Widget build(BuildContext context) {
    if (quizManagers.isEmpty) {
      return Center(child: Text('등록된 퀴즈가 없습니다.'));
    }
    return ListView.builder(
      itemCount: quizManagers.length,
      itemBuilder: (context, index) => QuizListItem(quiz: quizManagers[index]),
    );
  }
}
