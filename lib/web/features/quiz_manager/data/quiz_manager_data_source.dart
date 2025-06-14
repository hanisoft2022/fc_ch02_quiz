import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/dummy_quiz_provider.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/data/quiz_manager_converter.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/problem.dart';
import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// 퀴즈 관리 데이터 소스(Firestore 연동)
class QuizDataSource {
  final FirebaseFirestore _firestore;

  /// Firestore 인스턴스를 주입받음.
  /// [firestore]가 null이면 기본 인스턴스를 사용.
  QuizDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  /// Quiz 모델로 변환된 'quizzes' 컬렉션 참조를 반환.
  CollectionReference<Quiz> get quizzesCollection => _firestore
      .collection('quizzes')
      .withConverter<Quiz>(
        fromFirestore: QuizConverter.fromFirestore,
        toFirestore: QuizConverter.toFirestore,
      );

  /// createdAt 기준 오름차순 정렬된 퀴즈 쿼리를 반환.
  Query<Quiz> get quizzesCollectionOrderedByCreatedAt => _firestore
      .collection('quizzes')
      .orderBy('createdAt', descending: false)
      .withConverter<Quiz>(
        fromFirestore: QuizConverter.fromFirestore,
        toFirestore: QuizConverter.toFirestore,
      );

  /// Converter 없이 raw 데이터로 접근하는 문서 참조 반환
  DocumentReference<Map<String, dynamic>> rawQuizDoc(String id) =>
      _firestore.collection('quizzes').doc(id);

  // * CREATE
  /// 새 퀴즈를 추가하고, 생성 시점 타임스탬프를 세팅.
  ///
  /// [quiz] : 저장할 퀴즈 데이터
  ///
  /// 반환값: 생성된 문서의 id
  Future<String> addQuiz(Quiz quiz) async {
    final docRef = quizzesCollection.doc();
    final Quiz quizWithId = quiz.copyWith(id: docRef.id);
    await docRef.set(quizWithId);
    await _setCreatedAt(docRef.id);
    return docRef.id;
  }

  // * CREATE
  /// 더미 퀴즈 여러 개를 추가. (테스트/개발용)
  Future<void> addDummyQuizzes() async {
    final dummyQuizzes = DummyQuizProvider.getDummyQuizzes();
    for (var quiz in dummyQuizzes) {
      await addQuiz(quiz);
    }
  }

  // * READ
  /// createdAt 기준 오름차순 정렬된 퀴즈 목록을 실시간 스트림으로 반환.
  Stream<List<Quiz>> watchQuizzes() {
    return quizzesCollectionOrderedByCreatedAt.snapshots().map(
      (snapshot) => snapshot.docs.map((doc) => doc.data()).toList(),
    );
  }

  // * READ
  /// 특정 id의 퀴즈 단건을 조회.
  ///
  /// [id] : 조회할 퀴즈의 문서 id
  ///
  /// 반환값: 퀴즈 데이터(없으면 null)
  Future<Quiz?> getQuizById(String id) async {
    final doc = await quizzesCollection.doc(id).get();
    return doc.data();
  }

  // * UPDATE
  /// createdAt 필드를 서버 타임스탬프로 업데이트(merge).
  ///
  /// [id]는 업데이트할 문서의 id.
  Future<void> _setCreatedAt(String id) async {
    await rawQuizDoc(id).set({'createdAt': FieldValue.serverTimestamp()}, SetOptions(merge: true));
  }

  // * UPDATE
  /// 퀴즈 정보를 수정. (전체 필드 덮어쓰기)
  ///
  /// [quiz] : 수정할 퀴즈 데이터 (id 필수)
  Future<void> updateQuiz(Quiz quiz) async {
    if (quiz.id == null) {
      throw ArgumentError('Quiz id is required for update.');
    }
    await quizzesCollection.doc(quiz.id!).set(quiz, SetOptions(merge: true));
  }

  // * UPDATE
  /// 특정 퀴즈에 문제를 추가.
  /// [quizId] : 문제를 추가할 퀴즈의 문서 id
  /// [problem] : 추가할 문제 데이터
  Future<void> addProblemToQuiz(String quizId, Problem problem) async {
    final quizDoc = quizzesCollection.doc(quizId);

    await quizDoc.update({
      'problems': FieldValue.arrayUnion([problem.toJson()]),
    });
  }

  // * UPDATE
  /// 특정 퀴즈에 문제를 삭제.
  /// [quizId] : 문제를 삭제할 퀴즈의 문서 id
  /// [problem] : 삭제할 문제 데이터
  Future<void> removeProblemFromQuiz(String quizId, Problem problem) async {
    final quizDoc = quizzesCollection.doc(quizId);

    await quizDoc.update({
      'problems': FieldValue.arrayRemove([problem.toJson()]),
    });
  }

  // * DELETE
  /// 특정 id의 퀴즈를 삭제.
  ///
  /// [id] : 삭제할 퀴즈의 문서 id
  Future<void> deleteQuiz(String id) async {
    await quizzesCollection.doc(id).delete();
  }
}
