import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class MarketplaceDiscountCard extends StatelessWidget {
  final MarketplaceDiscount discount;
  final int availableRaverCoins;
  final String heroTag;

  MarketplaceDiscountCard({
    required this.discount,
    required this.availableRaverCoins,
    Key? key,
  })  : heroTag = 'marketplace-discount-card-${discount.id}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(
        MarketplaceDiscountDetailsRoute(
          discount: discount,
          blocContext: context,
          availableRaverCoins: availableRaverCoins,
          isNavigatedFromDashboard: true,
          heroTag: heroTag,
        ),
      ),
      child: Card(
        color: context.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: heroTag,
              child: CircleNetworkPhoto(
                photoUrl: discount.imageUrl,
                containerSize: 120,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 70,
              child: Column(
                children: [
                  AutoSizeText(
                    discount.name,
                    style: context.titleMedium,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${discount.price} Tonight Tokens',
                    style: context.titleSmall.copyWithSecondaryColor(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
