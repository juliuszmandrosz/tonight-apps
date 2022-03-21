import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_translations/raver_translations.dart';

class UpgradeToVipButton extends StatelessWidget {
  const UpgradeToVipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketQrCubit, TicketQrState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () => AutoRouter.of(context).push(
            TicketCheckoutRoute(
              ticket: state.ticket.getOrCrash(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(S().upgradeToVip),
          ),
        );
      },
    );
  }
}
