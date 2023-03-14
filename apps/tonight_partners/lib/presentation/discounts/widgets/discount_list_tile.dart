import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_entity.dart';
import 'package:tonight_partners/domain/discounts/partner_discount_entity.dart';
import 'package:translations/translations.dart';

class DiscountListTile extends StatelessWidget {
  final PartnerDiscount discount;
  final ClubSales sales;

  const DiscountListTile({
    required this.discount,
    required this.sales,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCollected = sales.exclusiveTicketsSold + sales.exclusiveVipsSold >=
        discount.requiredExclusiveEventsSales;
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              '${discount.requiredExclusiveEventsSales} ${S().sold}',
              style: context.subtitle1,
            ),
          ),
          if (isCollected) const FaIcon(FontAwesomeIcons.circleCheck),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: AutoSizeText(
          '${discount.percentageOff}%',
          style: context.subtitle1.copyWith(color: context.secondaryColor),
          maxLines: 1,
        ),
      ),
    );
  }
}
