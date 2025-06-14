import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizAddModal extends HookConsumerWidget {
  const QuizAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchProblems = ref.watch(problemsProvider);
    final problemTEC = useTextEditingController();

    return SizedBox(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '퀴즈 출제하기'.text.bold.make(),
          TextField(
            decoration: InputDecoration(hintText: '퀴즈 제목'),
            controller: problemTEC,
          ).p12(),
          Divider(),
          Gap(10),
          '선택지 출제'.text.bold.make(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Row(children: [Text('$index')]),
            ),
          ),
        ],
      ).p(20),
    );
  }
}
