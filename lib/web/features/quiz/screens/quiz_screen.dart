import 'package:ch02_realtime_quiz/core/extensions/media_query_extension.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/models/quiz.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/providers/quiz_manager_providers.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_add/modal/quiz_add_modal.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/widgets/quiz_bottom_button.dart';
import 'package:ch02_realtime_quiz/web/features/quiz/widgets/quiz_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  // 여기서 private 메서드로 정의 (context, ref를 파라미터로 받음)
  Future<void> _addQuiz(BuildContext context, WidgetRef ref) async {
    final quiz = await showModalBottomSheet<Quiz>(
      context: context,
      builder: (context) => QuizAddModal(),
    );

    if (quiz == null) return;

    ref.watch(quizControllerProvider.notifier).addQuiz(quiz);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizListAsync = ref.watch(watchQuizzesProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: '퀴즈 출제하기(출제자용)'.text.make(),
          actions: [
            TextButton.icon(
              label: '더미 퀴즈 추가'.text.make(),
              onPressed: () {
                ref.watch(quizControllerProvider.notifier).addDummyQuiz();
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
                    data: (quizzes) => QuizListView(quiz: quizzes),
                    error: (error, stackTrace) => Center(child: Text(error.toString())),
                    loading: () => Center(child: CircularProgressIndicator()),
                  ),
                ),
                QuizBottomButton(onPressed: () {}),
                Gap(context.bottomGapHeight),
              ],
            ),
            Center(child: Text('퀴즈 목록(구현 예정)')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _addQuiz(context, ref),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
