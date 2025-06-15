import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/option.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/widgets/option_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizAddModal extends HookConsumerWidget {
  const QuizAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final options = useState<List<Option>>([]);
    final quizTitleTEC = useTextEditingController();

    void addOption() {
      options.value = [
        ...options.value,
        Option(text: '', index: options.value.length, isCorrectOption: false),
      ];
    }

    void removeOption(int index) {
      final newOptions = List<Option>.from(options.value)..removeAt(index);
      for (int i = 0; i < newOptions.length; i++) {
        newOptions[i] = newOptions[i].copyWith(index: i);
      }
      options.value = newOptions;
    }

    void updateOptionText(int index, String value) {
      final newOptions = List<Option>.from(options.value);
      newOptions[index] = newOptions[index].copyWith(text: value);
      options.value = newOptions;
    }

    return SizedBox(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '퀴즈 제목'.text.size(20).bold.make(),
          TextField(
            decoration: InputDecoration(hintText: '퀴즈 제목을 입력하세요'),
            controller: quizTitleTEC,
          ).p12(),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              '선택지 목록'.text.size(15).bold.make(),
              TextButton.icon(
                icon: Icon(Icons.add),
                onPressed: addOption,
                label: '선택지 추가'.text.make(),
              ),
            ],
          ),
          Expanded(
            child: options.value.isEmpty
                ? Text('선택지를 추가하세요.').centered()
                : ListView(
                    children: [
                      for (int i = 0; i < options.value.length; i++)
                        OptionInput(
                          option: options.value[i],
                          onChanged: (value) => updateOptionText(i, value),
                          onRemove: () => removeOption(i),
                        ),
                    ],
                  ),
          ),
          '정답 선택하기'.text.size(15).bold.make(),
          DropdownButton(
            items: options.value
                .map((e) => DropdownMenuItem(value: e, child: e.text.text.make()))
                .toList(),
            onChanged: (value) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ElevatedButton(onPressed: () => {}, child: '제출'.text.make())],
          ),
        ],
      ).p(20),
    );
  }
}
