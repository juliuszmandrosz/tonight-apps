import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class UserMarketplaceDiscount extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String marketplaceUrl;
  final String code;
  final DateTime redeemedAt;

  UserMarketplaceDiscount({
    String? id,
    DateTime? redeemedAt,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.marketplaceUrl,
    required this.code,
  })  : id = id ?? const Uuid().v1(),
        redeemedAt = redeemedAt ?? DateTime.now();

  UserMarketplaceDiscount copyWith({
    String? name,
    String? description,
    String? imageUrl,
    String? marketplaceUrl,
    String? code,
    DateTime? redeemedAt,
  }) {
    return UserMarketplaceDiscount(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      marketplaceUrl: marketplaceUrl ?? this.marketplaceUrl,
      code: code ?? this.code,
      redeemedAt: redeemedAt ?? this.redeemedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        imageUrl,
        marketplaceUrl,
        code,
        redeemedAt,
      ];
}
