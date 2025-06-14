import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/problem_manager.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';

/// 더미 데이터 제공자 분리
class DummyQuizProvider {
  static List<QuizManager> getDummyQuizzes() {
    return [
      QuizManager(
        id: null,
        title: '더미 퀴즈1',
        problems: [
          ProblemManager(
            index: 0,
            question: '다트에서 int 타입의 최대값은?',
            options: ['2^31-1', '2^63-1', '65535', '4294967295'],
            correctIndex: 1,
          ),
          ProblemManager(
            index: 1,
            question: 'Flutter의 상태 관리 라이브러리가 아닌 것은?',
            options: ['Provider', 'Riverpod', 'Bloc', 'Express'],
            correctIndex: 3,
          ),
        ],
      ),
      QuizManager(
        id: null,
        title: '더미 퀴즈2',
        problems: [
          ProblemManager(
            index: 0,
            question: '흠냐륑',
            options: ['2^31-1', '2^63-1', '65535', '4294967295'],
            correctIndex: 1,
          ),
          ProblemManager(
            index: 1,
            question: '우엥!',
            options: ['Provider', 'Riverpod', 'Bloc', 'Express'],
            correctIndex: 3,
          ),
        ],
      ),
    ];
  }
}
