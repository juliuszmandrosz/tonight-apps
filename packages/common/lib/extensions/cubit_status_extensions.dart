import 'package:common/application/application.dart';

extension CubitStatusX on CubitStatus {
  bool isInitial() {
    return this == CubitStatus.initial;
  }

  bool isLoading() {
    return this == CubitStatus.loading;
  }

  bool isSuccess() {
    return this == CubitStatus.success;
  }

  bool isFailure() {
    return this == CubitStatus.failure;
  }
}
