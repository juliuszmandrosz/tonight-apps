import 'package:equatable/equatable.dart';
import 'package:random_string/random_string.dart';

class PromotionCode extends Equatable {
  final String code;
  final bool isValid;
  final int amountOff;
  final String currency;
  final int? maxRedemptions;
  final DateTime? expirationDateTime;
  final int timesRedeemed;

  PromotionCode({
    String? code,
    required this.isValid,
    required this.amountOff,
    required this.currency,
    this.maxRedemptions,
    this.expirationDateTime,
    this.timesRedeemed = 0,
  }) : code = code ?? randomAlphaNumeric(6);

  factory PromotionCode.empty() => PromotionCode(
        code: '',
        isValid: false,
        amountOff: 0,
        currency: '',
      );

  @override
  List<Object?> get props => [
        code,
        isValid,
        amountOff,
        currency,
        maxRedemptions,
        expirationDateTime,
        timesRedeemed,
      ];

  PromotionCode copyWith({
    String? code,
    bool? isValid,
    int? amountOff,
    String? currency,
    int? maxRedemptions,
    DateTime? expirationDateTime,
    int? timesRedeemed,
  }) {
    return PromotionCode(
      code: code ?? this.code,
      isValid: isValid ?? this.isValid,
      amountOff: amountOff ?? this.amountOff,
      currency: currency ?? this.currency,
      maxRedemptions: maxRedemptions ?? this.maxRedemptions,
      expirationDateTime: expirationDateTime ?? this.expirationDateTime,
      timesRedeemed: timesRedeemed ?? this.timesRedeemed,
    );
  }
}
