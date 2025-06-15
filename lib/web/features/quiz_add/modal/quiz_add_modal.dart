import 'package:ch02_realtime_quiz/web/features/quiz_add/widgets/correct_option_selector.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_add/widgets/option_list.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_add/widgets/quiz_title_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizAddModal extends HookConsumerWidget {
  const QuizAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizTitle = useState('');
    final options = useState<List<String>>([]);
    final correctOptionIndex = useState<int?>(null);

    void addOption() {
      options.value = [...options.value, ''];
    }

    void removeOption(int index) {
      final newOptions = List<String>.from(options.value)..removeAt(index);

      /// 정답 인덱스 조정 함수
      int? adjustCorrectIndex({
        required int removedIndex,
        required int? correctIndex,
        required int optionsLength,
      }) {
        // 1. 정답이 선택되지 않은 경우
        if (correctIndex == null) return null;
        // 2. 삭제된 선택지가 정답인 경우
        if (correctIndex == removedIndex) return null;
        // 3. 삭제된 선택지 뒤에 정답이 있는 경우
        if (correctIndex > removedIndex) return correctIndex - 1;
        // 4. 방어 코드
        if (correctIndex < 0 || correctIndex >= optionsLength) return null;
        // 5. 그 외에는 기존 인덱스 유지
        return correctIndex;
      }

      // 정답 인덱스 조정 함수 사용
      correctOptionIndex.value = adjustCorrectIndex(
        removedIndex: index,
        correctIndex: correctOptionIndex.value,
        optionsLength: newOptions.length,
      );
      options.value = newOptions;
    }

    void updateOption(int index, String text) {
      final newOptions = List<String>.from(options.value);
      newOptions[index] = text;
      options.value = newOptions;
    }

    final isFormValid =
        quizTitle.value.trim().isNotEmpty &&
        options.value.length >= 2 &&
        correctOptionIndex.value != null &&
        options.value.every((option) => option.trim().isNotEmpty);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuizTitleInput(onChanged: (value) => quizTitle.value = value),
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
          child: OptionList(
            options: options.value,
            onAdd: addOption,
            onRemove: removeOption,
            onChanged: updateOption,
          ),
        ),
        Gap(10),
        CorrectOptionSelector(
          options: options.value,
          correctIndex: correctOptionIndex.value,
          onChanged: (value) => correctOptionIndex.value = value,
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            '제목, 선택지 2개 이상, 정답 선택 필수'.text.color(Colors.grey).make(),
            Gap(10),
            ElevatedButton(
              onPressed: isFormValid
                  ? () {
                      // 제출 로직 구현 예정
                    }
                  : null,
              child: '제출'.text.make(),
            ),
          ],
        ),
      ],
    ).p(20);
  }
}
