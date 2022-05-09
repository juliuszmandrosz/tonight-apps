import 'package:firebase_auth/firebase_auth.dart';
import 'package:raver_common/domain/errors/not_authenticated_error.dart';

extension FirebaseAuthX on FirebaseAuth {
  User tryGetFirebaseUser() {
    if (currentUser == null) throw NotAuthenticatedError();

    return currentUser!;
  }
}
