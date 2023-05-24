part of 'scan_qr_cubit.dart';

@freezed
class ScanQrState with _$ScanQrState {
  const factory ScanQrState({
    required Option<TimeTask> lastScannedTask,
    required Option<String> lastScannedPhotoUrl,
    required CubitStatus status,
    required Option<String> errorMessage,
  }) = _ScanQrState;

  factory ScanQrState.initial() => ScanQrState(
        lastScannedTask: none(),
        lastScannedPhotoUrl: none(),
        status: CubitStatus.initial,
        errorMessage: none(),
      );
}
