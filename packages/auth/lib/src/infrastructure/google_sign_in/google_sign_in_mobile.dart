import 'package:auth/src/infrastructure/google_sign_in/tonight_google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInMobile implements TonightGoogleSignIn {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  GoogleSignInMobile(this._googleSignIn, this._firebaseAuth);

  @override
  Future<UserCredential?> signIn() async {
    final googleUser = await _googleSignIn.signIn();

    if (googleUser == null) return null;

    final googleAuth = await googleUser.authentication;

    final result = await _signInWithGoogleCredential(googleAuth);

    return result;
  }

  Future<UserCredential> _signInWithGoogleCredential(
      GoogleSignInAuthentication googleAuth) async {
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
