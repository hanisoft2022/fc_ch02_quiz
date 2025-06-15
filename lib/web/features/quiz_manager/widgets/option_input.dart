import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

class OptionInput extends HookWidget {
  final Option option;
  final ValueChanged<String> onChanged;
  final VoidCallback onRemove;

  const OptionInput({
    required this.option,
    required this.onChanged,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: option.text);

    return Row(
      children: [
        '${option.index + 1}.  '.text.make(),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: '선택지 내용 입력'),
            onChanged: onChanged,
          ),
        ),
        IconButton(onPressed: onRemove, icon: Icon(Icons.delete)),
      ],
    );
  }
}
