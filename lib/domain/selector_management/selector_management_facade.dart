import 'package:dartz/dartz.dart';
import 'package:raver_partners/domain/selector_management/selector_management_failure.dart';

abstract class SelectorManagementFacade {
  Future<Either<SelectorManagementFailure, Unit>> createAccountForSelector({
    required String email,
    required String password,
  });
}
