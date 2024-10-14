// ignore_for_file: use_build_context_synchronously

import 'package:dentsu_app/common/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    auth: FirebaseAuth.instance,
  ),
);

class AuthRepository {
  AuthRepository({
    required this.auth,
  });

  final FirebaseAuth auth;

  void signInWithEmail(
      BuildContext context, String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // await auth.createUserWithEmailAndPassword(
      //     email: email, password: password);
      context.goNamed('dashboard_mobile');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, content: e.message!);
    }
  }

  void signInWithEmailDesktop(
      BuildContext context, String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // await auth.createUserWithEmailAndPassword(
      //     email: email, password: password);
      context.goNamed('dashboard');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, content: e.message!);
    }
  }
}
