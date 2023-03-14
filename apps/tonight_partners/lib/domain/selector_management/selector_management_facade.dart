import 'package:dartz/dartz.dart';
import 'package:tonight_partners/domain/selector_management/selector_entity.dart';
import 'package:tonight_partners/domain/selector_management/selector_management_failure.dart';

abstract class SelectorManagementFacade {
  Future<Either<SelectorManagementFailure, String>>
      generateAccessCodeForSelector();

  Stream<Either<SelectorManagementFailure, List<Selector>>> getSelectors();

  Future<Either<SelectorManagementFailure, Unit>> deleteSelector(
    String selectorId,
  );
}
