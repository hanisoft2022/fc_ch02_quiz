import 'package:cloud_firestore/cloud_firestore.dart';

class QuizManagerDataSource {
  final FirebaseFirestore firestore;

  QuizManagerDataSource({required this.firestore});
}
