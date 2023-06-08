import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tonight/application/vouchers/models/voucher_model.dart';
import 'package:tonight/application/vouchers/models/voucher_type.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class VoucherCard extends StatelessWidget {
  final Voucher voucher;

  const VoucherCard({
    required this.voucher,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final route = voucher.voucherType.isTonight
            ? RedeemTonightVoucherRoute(voucher: voucher.toUserTonightVoucher())
            : ActivateTimeTaskRewardRoute(timeTaskId: voucher.id);

        context.pushRoute(route as PageRouteInfo);
      },
      child: TicketWidget(
        height: 120,
        width: double.infinity,
        color: context.surfaceColor,
        isCornerRounded: true,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AutoSizeText(
                      voucher.voucherName,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.titleLarge.copyWith(
                        decoration: voucher.isExpired
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    AutoSizeText(
                      voucher.venueName,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: context.bodyLarge.copyWith(
                        color: context.secondaryColor,
                        decoration: voucher.isExpired
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    if (!voucher.isExpired)
                      AutoSizeText(
                        // TODO - add translation
                        '${voucher.isActivated ? 'Aktywny do' : 'Ważny do'} ${context.formatDateTimeToLocaleYMDHM(voucher.validUntil)}',
                        style: context.labelSmall
                            .copyWith(color: context.secondaryColor),
                        maxLines: 1,
                      ),
                  ],
                ),
              ),
            ),
            if (voucher.isActivated && !voucher.isExpired)
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: PulsatingDot(
                    color: context.primaryColor,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
