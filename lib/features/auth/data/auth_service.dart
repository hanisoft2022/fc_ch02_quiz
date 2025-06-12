import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/app_user.dart';

class AuthService {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthService({FirebaseAuth? firebaseAuth, FirebaseFirestore? firestore})
    : _auth = firebaseAuth ?? FirebaseAuth.instance,
      _firestore = firestore ?? FirebaseFirestore.instance;

  // Firestore 컬렉션에 AppUser converter 적용
  CollectionReference<AppUser> get _userCollection => _firestore
      .collection('users')
      .withConverter<AppUser>(
        fromFirestore: (snapshot, _) => AppUser.fromJson({...snapshot.data()!, 'uid': snapshot.id}),
        toFirestore: (user, _) => user.toJson(),
      );

  /// 익명 로그인
  Future<User?> signInAnonymously() async {
    final credential = await _auth.signInAnonymously();
    final user = credential.user;
    if (user != null) {
      final appUser = AppUser(uid: user.uid, name: '익명', isAnonymous: true);
      await _userCollection.doc(user.uid).set(appUser);
    }
    return user;
  }

  /// 로그아웃
  Future<void> signOut() async {
    await _auth.signOut();
  }

  /// 현재 로그인된 사용자 반환
  User? get currentUser => _auth.currentUser;

  /// Firestore에서 AppUser 정보 실시간 스트림으로 가져오기
  Stream<AppUser?> userProfileStream(String uid) {
    return _userCollection.doc(uid).snapshots().map((doc) => doc.data());
  }

  /// Firestore에서 AppUser 정보 단건 조회
  Future<AppUser?> fetchUserProfile(String uid) async {
    final doc = await _userCollection.doc(uid).get();
    return doc.data();
  }
}
