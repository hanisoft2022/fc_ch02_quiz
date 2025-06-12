import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../model/app_user.dart';

class AuthService {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthService({FirebaseAuth? firebaseAuth, FirebaseFirestore? firestore})
    : _auth = firebaseAuth ?? FirebaseAuth.instance,
      _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<AppUser> get _userCollection => _firestore
      .collection('users')
      .withConverter<AppUser>(
        fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
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

  /// 이메일/비밀번호 회원가입
  Future<User?> signUpWithEmail(String email, String password, String name) async {
    final credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final user = credential.user;
    if (user != null) {
      final appUser = AppUser(uid: user.uid, name: name, isAnonymous: false);
      await _userCollection.doc(user.uid).set(appUser);
    }
    return user;
  }

  /// 이메일/비밀번호 로그인
  Future<User?> signInWithEmail(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return credential.user;
  }

  /// 구글 로그인
  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) return null; // 사용자가 취소한 경우

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential = await _auth.signInWithCredential(credential);
    final user = userCredential.user;
    if (user != null) {
      final appUser = AppUser(
        uid: user.uid,
        name: user.displayName ?? '구글 사용자',
        isAnonymous: false,
      );
      await _userCollection.doc(user.uid).set(appUser, SetOptions(merge: true));
    }
    return user;
  }

  /// 로그아웃
  Future<void> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
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
