import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizTitleInput extends HookWidget {
  final void Function(String) onChanged;
  final String? initialValue;
  const QuizTitleInput({super.key, required this.onChanged, this.initialValue});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue ?? '');

    // 입력값이 바뀔 때마다 onChanged 콜백 호출
    useEffect(() {
      controller.addListener(() {
        onChanged(controller.text);
      });
      return null;
    }, [controller]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '퀴즈 제목'.text.size(20).bold.make(),
        TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: '퀴즈 제목을 입력하세요'),
          controller: controller,
          textInputAction: TextInputAction.next,
        ).p12(),
      ],
    );
  }
}
