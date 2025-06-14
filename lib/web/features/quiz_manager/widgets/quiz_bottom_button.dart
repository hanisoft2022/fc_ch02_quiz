import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuizBottomButton extends StatelessWidget {
  const QuizBottomButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: '제출 및 핀코드 생성'.text.make());
  }
}
