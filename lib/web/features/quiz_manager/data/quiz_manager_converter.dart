import 'package:ch02_realtime_quiz/web/features/quiz_manager/models/quiz_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore 변환 로직을 별도 클래스로 분리
class QuizManagerConverter {
  static QuizManager fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    return QuizManager.fromJson(snapshot.data()!);
  }

  static Map<String, dynamic> toFirestore(QuizManager quizManager, SetOptions? options) {
    return quizManager.toJson();
  }
}
