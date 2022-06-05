import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver/presentation/core/vip_info.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class UpgradeToVipButton extends StatelessWidget {
  const UpgradeToVipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketQrCubit, TicketQrState>(
      builder: (context, state) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: VipInfo(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () => context.pushRoute(
                  VipCheckoutRoute(ticket: state.ticket.getOrCrash()),
                ),
                child: Text(S().upgradeToVip),
              ),
            ),
          ],
        );
      },
    );
  }
}
