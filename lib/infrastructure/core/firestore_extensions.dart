import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> getClubDocRef() async {
    final partnerOption = await getIt<PartnerAuthFacade>().getSignedPartner();
    final partner = partnerOption.getOrElse(
      () => throw NotAuthenticatedError(),
    );
    return FirebaseFirestore.instance.clubCollection.doc(partner.id);
  }

  Future<DocumentReference> getPartnerDocRef() async {
    final partnerOption = await getIt<PartnerAuthFacade>().getSignedPartner();
    final partner = partnerOption.getOrElse(
      () => throw NotAuthenticatedError(),
    );
    return FirebaseFirestore.instance.partnersCollection.doc(partner.id);
  }
}
