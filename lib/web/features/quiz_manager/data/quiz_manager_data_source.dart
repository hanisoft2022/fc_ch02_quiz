import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/dummy_quiz_provider.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/quiz_manager_converter.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuizManagerDataSource {
  final FirebaseFirestore _firestore;

  QuizManagerDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  /// 명확한 네이밍
  CollectionReference<QuizManager> get quizzesCollection => _firestore
      .collection('quizzes')
      .withConverter<QuizManager>(
        fromFirestore: QuizManagerConverter.fromFirestore,
        toFirestore: QuizManagerConverter.toFirestore,
      );

  DocumentReference<Map<String, dynamic>> rawQuizDoc(String id) =>
      _firestore.collection('quizzes').doc(id);

  Future<void> _setCreatedAt(String id) async {
    await rawQuizDoc(id).set({'createdAt': FieldValue.serverTimestamp()}, SetOptions(merge: true));
  }

  /// 서버 타임스탬프 설정과 데이터 저장 분리
  Future<String> addQuizWithTimestamp(QuizManager quizManager) async {
    final docRef = quizzesCollection.doc();
    final QuizManager quizWithId = quizManager.copyWith(id: docRef.id);
    await docRef.set(quizWithId);
    await _setCreatedAt(docRef.id);
    return docRef.id;
  }

  // * CREATE
  Future<void> addDummyQuizzes() async {
    final dummyQuizzes = DummyQuizProvider.getDummyQuizzes();
    for (var quiz in dummyQuizzes) {
      await addQuizWithTimestamp(quiz);
    }
  }

  // * CREATE
  Future<void> addQuiz(QuizManager quiz) async {
    await addQuizWithTimestamp(quiz);
  }

  // * READ
  Stream<List<QuizManager>> watchQuizzes() {
    return quizzesCollection.snapshots().map(
      (snapshot) => snapshot.docs.map((doc) => doc.data()).toList(),
    );
  }
}
