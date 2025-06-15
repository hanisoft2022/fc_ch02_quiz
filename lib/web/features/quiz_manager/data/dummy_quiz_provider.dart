import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/option.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz.dart';

/// 더미 데이터 제공자 분리
class DummyQuizProvider {
  static List<Quiz> getDummyQuizzes() {
    return [
      Quiz(
        id: null,
        title: '더미 퀴즈1',
        options: [
          Option(index: 0, text: '선택지 1. 2^31-1', isCorrectOption: true),
          Option(index: 1, text: '선택지 2. Provider', isCorrectOption: false),
        ],
      ),
      Quiz(
        id: null,
        title: '더미 퀴즈2',
        options: [
          Option(index: 0, text: '선택지1 2^63-1', isCorrectOption: false),
          Option(index: 1, text: '선택지2 Bloc', isCorrectOption: true),
        ],
      ),
    ];
  }
}
