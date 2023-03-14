import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tonight/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:tonight/presentation/core/vip_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

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
                onPressed: () async {
                  ScreenBrightness().resetScreenBrightness();
                  await context.pushRoute(
                    VipCheckoutRoute(ticket: state.ticket.getOrCrash()),
                  );
                  ScreenBrightness().setScreenBrightness(1);
                },
                child: Text(S().upgradeToVip),
              ),
            ),
          ],
        );
      },
    );
  }
}
