import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class MarketplaceDiscount extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String marketplaceUrl;

  /// Price in raver coins
  final int price;

  MarketplaceDiscount({
    String? id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.marketplaceUrl,
    required this.price,
  }) : id = id ?? const Uuid().v1();

  MarketplaceDiscount copyWith({
    String? name,
    String? description,
    String? imageUrl,
    String? marketplaceUrl,
    int? price,
  }) {
    return MarketplaceDiscount(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      marketplaceUrl: marketplaceUrl ?? this.marketplaceUrl,
      price: price ?? this.price,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        imageUrl,
        marketplaceUrl,
        price,
      ];
}
