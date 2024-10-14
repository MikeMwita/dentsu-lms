import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository, ref: ref);
});

final userDataAuthProvider = FutureProvider((ref) {
  final authController = ref.watch(authControllerProvider);
  // return authController.getUserData();
});

class AuthController {
  AuthController({
    required this.authRepository,
    required this.ref,
  });
  final AuthRepository authRepository;
  final ProviderRef ref;

  void signInWithEmail(BuildContext context, String email, String password) {
    authRepository.signInWithEmail(context, email, password);
  }

  void signInWithEmailDesktop(
      BuildContext context, String email, String password) {
    authRepository.signInWithEmailDesktop(context, email, password);
  }
}
