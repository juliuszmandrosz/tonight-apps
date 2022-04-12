part of 'scanner_cubit.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState({
    required Option<Ticket> lastScannedTicket,
    required CubitStatus status,
    required Option<String> errorMessage,
  }) = _ScannerState;

  factory ScannerState.initial() => ScannerState(
        lastScannedTicket: none(),
        status: CubitStatus.initial,
        errorMessage: none(),
      );
}
