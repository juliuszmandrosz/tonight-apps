import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class UserDiscountListTile extends StatelessWidget {
  final UserMarketplaceDiscount discount;

  const UserDiscountListTile({
    required this.discount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        UserMarketplaceDiscountDetailsRoute(discount: discount),
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
          '${S().code}: ${discount.code}'.toUpperCase(),
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
