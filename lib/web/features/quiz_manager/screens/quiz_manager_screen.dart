import 'package:ch02_realtime_quiz/common/model/quiz.dart';
import 'package:ch02_realtime_quiz/core/extensions/media_query_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: quizManagers.length,
                    itemBuilder: (context, index) => ExpansionTile(
                      title: quizManagers[index].title.text.make(),
                      children: quizManagers[index].problems
                          .map((e) => ListTile(title: e.controller.text.text.make()))
                          .toList(),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: '제출 및 핀코드 생성'.text.make()),
                Gap(
                  kIsWeb
                      ? 24 // 웹 기본값
                      : context.bottomInset == 0
                      ? 16 // 안드로이드 등 홈 인디케이터 없는 기기
                      : context.bottomInset, // iOS 홈 인디케이터
                ),
              ],
            ),
            Center(child: Text('퀴즈 목록')),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () async {}, child: Icon(Icons.add)),
      ),
    );
  }
}
