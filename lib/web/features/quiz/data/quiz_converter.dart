import 'package:ch02_realtime_quiz/web/features/quiz/models/quiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore 변환 로직을 별도 클래스로 분리
class QuizConverter {
  static Quiz fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) => Quiz.fromJson(snapshot.data()!);

  static Map<String, dynamic> toFirestore(Quiz quiz, SetOptions? options) => quiz.toJson();
}
