import 'package:firebase_auth/firebase_auth.dart';

abstract class TonightGoogleSignIn {
  Future<UserCredential?> signIn();

  Future<void> signOut();
}
