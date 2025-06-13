import 'package:ch02_realtime_quiz/core/extensions/media_query_extension.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/providers/quiz_manager_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizManagerScreen extends ConsumerWidget {
  const QuizManagerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizListAsync = ref.watch(quizListProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: '퀴즈 출제하기(출제자용)'.text.make(),
          actions: [
            TextButton.icon(
              label: '더미 퀴즈 추가'.text.make(),
              onPressed: () {
                ref.watch(quizManagerControllerProvider.notifier).addDummyQuiz();
              },
              icon: Icon(Icons.add),
            ),
          ],
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
                  child: quizListAsync.when(
                    data: (quizManagers) => quizManagers.isEmpty
                        ? Center(child: Text('등록된 퀴즈가 없습니다.'))
                        : ListView.builder(
                            itemCount: quizManagers.length,
                            itemBuilder: (context, index) => ExpansionTile(
                              title: quizManagers[index].title.text.make(),
                              children: quizManagers[index].problems
                                  .map((e) => ListTile(title: e.question.text.make()))
                                  .toList(),
                            ),
                          ),
                    error: (error, stackTrace) => Center(child: Text(error.toString())),
                    loading: () => Center(child: CircularProgressIndicator()),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final quiz = await showModalBottomSheet<QuizManager>(
              context: context,
              builder: (context) => Container(),
            );

            if (quiz == null) return;

            ref.watch(quizManagerControllerProvider.notifier).addQuiz(quiz);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
