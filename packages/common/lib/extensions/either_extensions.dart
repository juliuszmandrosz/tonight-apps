import 'package:dartz/dartz.dart';
import 'package:raver_common/domain/errors/invalid_operation_error.dart';

extension EitherX<L, R> on Either<L, R> {
  /// Throws [InvalidOperationError]
  R getRightOrCrash() {
    return getOrElse(() => throw InvalidOperationError());
  }

  /// Throws [InvalidOperationError]
  L getLeftOrCrash() {
    return fold((l) => l, (r) => throw InvalidOperationError());
  }
}
