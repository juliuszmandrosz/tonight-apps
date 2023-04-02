import 'package:auth/src/infrastructure/google_sign_in/tonight_google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInWeb implements TonightGoogleSignIn {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  GoogleSignInWeb(this._firebaseAuth, this._googleSignIn);

  @override
  Future<UserCredential?> signIn() async {
    final googleProvider = GoogleAuthProvider();
    googleProvider.addScope(
      'https://www.googleapis.com/auth/contacts.readonly',
    );
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
    return _firebaseAuth.signInWithPopup(googleProvider);
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
