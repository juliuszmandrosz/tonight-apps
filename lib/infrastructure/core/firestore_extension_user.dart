import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:raver/injection.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<UserAuthFacade>().getSignedUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.userCollection.doc(user.id);
  }
}
