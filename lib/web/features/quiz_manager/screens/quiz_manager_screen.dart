import 'package:ch02_realtime_quiz/common/model/quiz.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizManagerScreen extends StatelessWidget {
  const QuizManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<QuizManager> quizManagers = [
      QuizManager(problems: [], title: 'quiz1'),
      QuizManager(problems: [], title: 'quiz2'),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('퀴즈 출제하기(출제자용)'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: '출제하기'),
              Tab(icon: Icon(Icons.star), text: '퀴즈 목록'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: quizManagers.length,
              itemBuilder: (context, index) =>
                  ExpansionTile(title: quizManagers[index].title.text.make()),
            ),
            Center(child: Text('퀴즈 목록')),
          ],
        ),
      ),
    );
  }
}
