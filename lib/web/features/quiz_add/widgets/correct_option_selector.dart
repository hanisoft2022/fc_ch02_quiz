import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// 3. 정답 선택 위젯 (StatelessWidget)
class CorrectOptionSelector extends StatelessWidget {
  final List<String> options;
  final int? correctIndex;
  final void Function(int?) onChanged;

  const CorrectOptionSelector({
    required this.options,
    required this.correctIndex,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '정답 선택하기'.text.size(15).bold.make(),
        options.isEmpty
            ? '먼저 선택지를 추가하세요.'.text.color(Colors.grey).make().pSymmetric(v: 10)
            : DropdownButton<int>(
                isExpanded: true,
                hint: Text('정답을 선택하세요'),
                value: correctIndex,
                items: List.generate(
                  options.length,
                  (i) => DropdownMenuItem(
                    value: i,
                    child: Text(
                      options[i].isEmpty ? '선택지 ${i + 1}' : options[i],
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                onChanged: onChanged,
              ),
      ],
    );
  }
}
