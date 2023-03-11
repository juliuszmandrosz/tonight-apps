part of 'scanner_cubit.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState({
    required Option<Ticket> lastScannedTicket,
    required List<Reward> userRewards,
    required CubitStatus status,
    required Option<String> errorMessage,
  }) = _ScannerState;

  factory ScannerState.initial() => ScannerState(
        lastScannedTicket: none(),
        userRewards: [],
        status: CubitStatus.initial,
        errorMessage: none(),
      );
}
