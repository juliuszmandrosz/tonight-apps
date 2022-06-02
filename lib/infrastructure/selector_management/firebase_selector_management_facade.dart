import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/selector_management/selector_entity.dart';
import 'package:raver_partners/domain/selector_management/selector_management_facade.dart';
import 'package:raver_partners/domain/selector_management/selector_management_failure.dart';
import 'package:raver_partners/infrastructure/core/firestore_extensions.dart';
import 'package:raver_partners/infrastructure/selector_management/cloud_functions/selector_cloud_functions_facade.dart';
import 'package:raver_partners/infrastructure/selector_management/dtos/selector_dto.dart';

class FirebaseSelectorManagementFacade implements SelectorManagementFacade {
  final SelectorManagementCloudFunctionsFacade _cloudFunctionsFacade;
  final FirebaseFirestore _firestore;
  final Logger _logger;

  FirebaseSelectorManagementFacade({
    required SelectorManagementCloudFunctionsFacade
        selectorCloudFunctionsFacade,
    required FirebaseFirestore firestore,
    required Logger logger,
  })  : _cloudFunctionsFacade = selectorCloudFunctionsFacade,
        _firestore = firestore,
        _logger = logger;

  @override
  Future<Either<SelectorManagementFailure, String>>
      generateAccessCodeForSelector() async {
    try {
      final code = await _cloudFunctionsFacade.generateAccessCodeForSelector();
      return right(code);
    } on FirebaseFunctionsException catch (e) {
      _logger.e(
        "Firebase Functions Exception during generating access code for selector EXCEPTION: $e",
      );
      return left(const SelectorManagementFailure.unexpected());
    }
  }

  @override
  Stream<Either<SelectorManagementFailure, List<Selector>>>
      getSelectors() async* {
    final clubDocRef = await _firestore.getClubDocRef();

    yield* clubDocRef.selectors
        .orderBy('email')
        .snapshots()
        .map(
          (snapshot) => right<SelectorManagementFailure, List<Selector>>(
            snapshot.docs
                .map((doc) => SelectorDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        _logger.e("Firebase Exception during getting selectors EXCEPTION: $e");
        return left(const SelectorManagementFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<SelectorManagementFailure, Unit>> deleteSelector(
    String selectorId,
  ) async {
    try {
      final clubDocRef = await _firestore.getClubDocRef();

      await clubDocRef.selectors.doc(selectorId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("Firebase Exception during deleting selector EXCEPTION: $e");
      return left(const SelectorManagementFailure.unexpected());
    }
  }
}
