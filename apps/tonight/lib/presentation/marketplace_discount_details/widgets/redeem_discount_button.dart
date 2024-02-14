import 'package:common/constants/ui_constants.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/marketplace_discount_details/marketplace_discount_details_cubit.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:translations/generated/generated.dart';

class RedeemDiscountButton extends StatelessWidget {
  final MarketplaceDiscount discount;

  const RedeemDiscountButton({
    required this.discount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.8,
      height: kButtonHeight,
      child: FloatingActionButton.extended(
        onPressed: () async {
          final result = await context.showConfirmationDialogWithCustomMessage(
            S().areYouSureYouWantThisDiscount,
          );
          if (result == true && context.mounted) {
            await context
                .read<MarketplaceDiscountDetailsCubit>()
                .redeemDiscount(discount);
          }
        },
        label: Text(
          '${S().redeemFor} '
          '${discount.price} '
          '${S().raverCoinsReward(discount.price)}',
        ),
        icon: const FaIcon(FontAwesomeIcons.coins),
      ),
    );
  }
}
