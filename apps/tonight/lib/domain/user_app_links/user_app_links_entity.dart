import 'package:equatable/equatable.dart';

class UserAppLinks extends Equatable {
  final String facebook;
  final String instagram;
  final String tikTok;
  final String privacyPolicy;
  final String termsOfService;

  const UserAppLinks({
    required this.facebook,
    required this.instagram,
    required this.tikTok,
    required this.privacyPolicy,
    required this.termsOfService,
  });

  @override
  List<Object?> get props => [
        facebook,
        instagram,
        tikTok,
        privacyPolicy,
        termsOfService,
      ];
}
