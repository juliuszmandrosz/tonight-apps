import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';

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
          // TODO - add translation
          Flexible(
            // child: RaverPartnersHeadline(
            //   text: '${discount.requiredExclusiveEventsSales} sprzedanych',
            //   isSmallerVersion: true,
            // ),
            child: Text(
              '${discount.requiredExclusiveEventsSales} sprzedanych',
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
