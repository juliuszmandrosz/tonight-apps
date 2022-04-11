import 'package:dartz/dartz.dart';
import 'package:raver_common/domain/errors/invalid_operation_error.dart';

extension OptionX on Option {
  /// Throws [InvalidOperationError]
  getOrCrash() {
    return getOrElse(() => throw InvalidOperationError());
  }
}