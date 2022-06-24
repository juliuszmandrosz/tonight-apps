import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/ticket_qr/widgets/ticket_return_button.dart';
import 'package:raver/presentation/ticket_qr/widgets/upgrade_to_vip_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:screen_brightness/screen_brightness.dart';

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
    return LoaderOverlay(
      overlayWidget: const TicketLogoAnimation(),
      useDefaultLoading: false,
      overlayColor: context.shadowColor,
      overlayOpacity: .7,
      child: BlocProvider(
        create: (context) => getIt<TicketQrCubit>(
          param1: context.read<TicketListCubit>(),
        )..initTicketData(widget.ticket),
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
          },
          buildWhen: (previous, current) =>
              previous.isVipEnabled != current.isVipEnabled ||
              previous.ticket != current.ticket,
          builder: (context, state) {
            final ticketInState = state.ticket.getOrCrash();
            return Scaffold(
              appBar: RaverAppBar(title: S().tickets(1)),
              body: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 30),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QrImage(
                        data: _getData(context),
                        version: QrVersions.auto,
                        size: 300,
                        backgroundColor: context.onSurfaceColor,
                      ),
                      if (widget.ticket.isVip)
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: RaverHeadline(text: S().vip),
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
      ),
    );
  }

  _getData(BuildContext context) {
    final userId = context.read<ProfileCubit>().state.user.id;
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
