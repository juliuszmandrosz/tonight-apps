import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tonight_voucher_details_model.freezed.dart';

@freezed
class UserTonightVoucherDetails with _$UserTonightVoucherDetails {
  const factory UserTonightVoucherDetails({
    required String venueId,
    required String eventName,
  }) = _UserTonightVoucherDetails;
}
