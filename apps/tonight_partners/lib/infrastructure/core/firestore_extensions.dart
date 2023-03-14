import 'package:auth/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:tonight_partners/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> getClubDocRef() async {
    final partnerDoc = await getPartnerDocRef().then((ref) => ref.get());

    final clubId = partnerDoc.get('clubId');

    return clubCollection.doc(clubId);
  }

  Future<DocumentReference> getPartnerDocRef() async {
    final partnerOption = await getIt<PartnerAuthFacade>().getSignedPartner();
    final partner = partnerOption.getOrElse(
      () => throw NotAuthenticatedError(),
    );
    return partnersCollection.doc(partner.id);
  }
}
