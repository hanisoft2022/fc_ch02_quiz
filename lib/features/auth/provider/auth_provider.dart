import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

// * READ: 함수형 provider (인증 상태 스트림)
@riverpod
Stream<User?> authState(Ref ref) => FirebaseAuth.instance.authStateChanges();

// * WRITE: 클래스형 provider (로그인/로그아웃 등 side-effect)
@riverpod
class AuthController extends _$AuthController {
  @override
  User? build() => FirebaseAuth.instance.currentUser;

  /// 익명 로그인
  Future<void> signInAnonymously() async {
    final credential = await FirebaseAuth.instance.signInAnonymously();
    // 상태 갱신(필요하다면)
    state = credential.user;
  }

  /// 로그아웃
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    state = null;
  }
}
