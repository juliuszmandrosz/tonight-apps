import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class AvailableDiscountListTile extends StatelessWidget {
  final MarketplaceDiscount discount;

  const AvailableDiscountListTile({
    required this.discount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        MarketplaceDiscountDetailsRoute(
          discount: discount,
          blocContext: context,
          availableRaverCoins: context
              .read<MarketplaceDiscountsBloc>()
              .state
              .availableRaverCoins,
        ),
      ),
      title: Text(
        discount.name,
        style: context.titleMedium,
      ),
      leading: CircleNetworkPhoto(
        photoUrl: discount.imageUrl,
        containerSize: 50,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          '${discount.price} '
          'tonight tokens',
          style: context.titleSmall.copyWithSecondaryColor(),
        ),
      ),
      trailing: const FaIcon(
        FontAwesomeIcons.chevronRight,
        size: 16,
      ),
    );
  }
}
