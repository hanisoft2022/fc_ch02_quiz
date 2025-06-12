import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../data/auth_service.dart';

part 'auth_providers.g.dart';

// AuthService provider (싱글턴)
@riverpod
AuthService authService(Ref ref) {
  return AuthService();
}

// 함수형 provider 예시
@riverpod
Stream<User?> authState(Ref ref) {
  return FirebaseAuth.instance.authStateChanges();
}

// 클래스형 provider (상태 + 여러 액션)
@riverpod
class AuthController extends _$AuthController {
  @override
  User? build() => FirebaseAuth.instance.currentUser;

  Future<void> signInAnonymously() async {
    final service = ref.read(authServiceProvider);
    final user = await service.signInAnonymously();
    state = user;
  }

  Future<void> signUpWithEmail(String email, String password, String name) async {
    final service = ref.read(authServiceProvider);
    final user = await service.signUpWithEmail(email, password, name);
    state = user;
  }

  Future<void> signInWithEmail(String email, String password) async {
    final service = ref.read(authServiceProvider);
    final user = await service.signInWithEmail(email, password);
    state = user;
  }

  Future<void> signInWithGoogle() async {
    final service = ref.read(authServiceProvider);
    final user = await service.signInWithGoogle();
    state = user;
  }

  Future<void> signOut() async {
    final service = ref.read(authServiceProvider);
    await service.signOut();
    state = null;
  }
}
