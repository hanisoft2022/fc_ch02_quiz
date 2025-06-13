import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/problem_manager.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuizManagerDataSource {
  final FirebaseFirestore _firestore;

  QuizManagerDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<QuizManager> get _quizzes => _firestore
      .collection('quizzes')
      .withConverter<QuizManager>(
        fromFirestore: (snapshot, _) => QuizManager.fromJson(snapshot.data()!),
        toFirestore: (quizManager, _) => quizManager.toJson(),
      );

  // * CREATE
  Future<void> addDummyQuizzes() async {
    final List<QuizManager> quizManagers = [
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

    for (var quiz in quizManagers) {
      // 1. Firestore에서 새 문서 ID를 미리 생성
      final docRef = _quizzes.doc();

      // 2. 생성한 ID를 모델에 반영하여 저장
      await docRef.set(quiz.copyWith(id: docRef.id));
    }
  }

  // * CREATE
  Future<void> addQuiz(QuizManager quiz) async {
    final docRef = _quizzes.doc();
    await docRef.set(quiz.copyWith(id: docRef.id));
  }

  // *READ
  Stream<List<QuizManager>> watchQuizzes() {
    return _quizzes.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }
}
