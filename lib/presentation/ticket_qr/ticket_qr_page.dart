import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/ticket_qr/ticket_qr_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/ticket_qr/widgets/ticket_return_button.dart';
import 'package:raver/presentation/ticket_qr/widgets/upgrade_to_vip_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'dart:convert';

class TicketQrPage extends StatelessWidget {
  final Ticket ticket;

  const TicketQrPage({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TicketQrCubit>(
        param1: context.read<TicketListCubit>(),
      )..initTicketData(ticket),
      child: BlocListener<TicketQrCubit, TicketQrState>(
        listener: (context, state) {
          state.ticketReturnFailureMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          state.ticketReturnStatus.isLoading()
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();

          if (state.ticketReturnStatus.isSuccess()) {
            context.showSnackbarMessage(S().ticketReturnedSuccessfully);
            AutoRouter.of(context).popUntilRoot();
          }
        },
        child: LoaderOverlay(
          child: Scaffold(
            appBar: RaverAppBar(title: S().tickets(1)),
            body: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: QrImage(
                        data: _getData(context),
                        version: QrVersions.auto,
                        size: 300,
                      ),
                    ),
                    if (!ticket.isVip) const UpgradeToVipButton(),
                    if (ticket.eventDateTime.isAfter(
                      DateTime.now().add(const Duration(days: 1)),
                    ))
                      const TicketReturnButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getData(BuildContext context) {
    final userId = context.read<ProfileCubit>().state.user.id;
    final data = {
      'ticketId': ticket.id,
      'userId': userId,
    };

    return jsonEncode(data);
  }
}
