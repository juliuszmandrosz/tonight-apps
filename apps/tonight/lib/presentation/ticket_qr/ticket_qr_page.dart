import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/ticket_qr/widgets/ticket_return_button.dart';
import 'package:tonight/presentation/ticket_qr/widgets/upgrade_to_vip_button.dart';
import 'package:translations/translations.dart';

class TicketQrPage extends StatefulWidget {
  final Ticket ticket;

  const TicketQrPage({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  State<TicketQrPage> createState() => _TicketQrPageState();
}

class _TicketQrPageState extends State<TicketQrPage> {
  @override
  void initState() {
    ScreenBrightness().setScreenBrightness(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<TicketQrCubit>(
        param1: context.read<TicketListCubit>(),
      )
        ..initTicketData(widget.ticket),
      child: BlocConsumer<TicketQrCubit, TicketQrState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
                () => null,
                (message) => context.showSnackbarMessage(message),
          );

          state.ticketReturnStatus.isLoading()
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();

          if (state.ticketReturnStatus.isSuccess()) {
            context.showSnackbarMessage(S().ticketReturnedSuccessfully);
            context.router.popUntilRoot();
          }

          if (state.isScanned) {
            context.replaceRoute(const TicketScanConfirmRoute());
          }
        },
        buildWhen: (previous, current) =>
        previous.isVipEnabled != current.isVipEnabled ||
            previous.ticket != current.ticket,
        builder: (context, state) {
          final ticketInState = state.ticket.getOrCrash();
          return Scaffold(
            appBar: TonightAppBar(title: S().tickets(1)),
            body: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QrImageView(
                      data: _getData(context),
                      version: QrVersions.auto,
                      size: 300,
                      backgroundColor: context.onSurfaceColor,
                    ),
                    if (ticketInState.isVip)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TonightHeadline(text: S().vip),
                      ),
                    const Spacer(),
                    if (!ticketInState.isVip && state.isVipEnabled)
                      const UpgradeToVipButton(),
                    if (ticketInState.eventStartDateTime.isAfter(
                      DateTime.now(),
                    ) &&
                        ticketInState.isReturnable)
                      const TicketReturnButton(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _getData(BuildContext context) {
    final userId =
        context
            .read<ProfileBloc>()
            .state
            .userProfile
            .getOrCrash()
            .userId;
    final data = {
      'ticketId': widget.ticket.id,
      'userId': userId,
    };

    return jsonEncode(data);
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }
}
