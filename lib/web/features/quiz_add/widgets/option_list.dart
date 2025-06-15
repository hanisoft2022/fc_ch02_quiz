import 'package:ch02_realtime_quiz/web/features/quiz_add/widgets/option_item.dart';
import 'package:flutter/material.dart';

class OptionList extends StatelessWidget {
  final List<String> options;
  final void Function() onAdd;
  final void Function(int) onRemove;
  final void Function(int, String) onChanged;

  const OptionList({
    required this.options,
    required this.onAdd,
    required this.onRemove,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return options.isEmpty
        ? Center(child: Text('선택지를 추가하세요.'))
        : ListView.builder(
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, index) => OptionItem(
              initialText: options[index],
              onRemove: () => onRemove(index),
              onChanged: (text) => onChanged(index, text),
            ),
          );
  }
}
