import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:tickets/domain/ticket_entity.dart';
import 'package:tonight/application/activate_ticket/activate_ticket_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/activate_ticket/widgets/activate_ticket_button.dart';
import 'package:tonight/presentation/activate_ticket/widgets/activate_ticket_club_name_info.dart';
import 'package:tonight/presentation/activate_ticket/widgets/activate_ticket_event_name_info.dart';
import 'package:tonight/presentation/activate_ticket/widgets/activate_ticket_quantity_info.dart';
import 'package:tonight/presentation/activate_ticket/widgets/receive_ticket_button.dart';
import 'package:tonight/presentation/activate_ticket/widgets/ticket_expired_info.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ActivateTicketPage extends StatefulWidget {
  final Ticket ticket;

  const ActivateTicketPage({
    required this.ticket,
    Key? key,
  }) : super(key: key);

  @override
  State<ActivateTicketPage> createState() => _ActivateTicketPageState();
}

class _ActivateTicketPageState extends State<ActivateTicketPage> {
  @override
  void initState() {
    ScreenBrightness().setScreenBrightness(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ActivateTicketCubit>()..listenTicketById(widget.ticket.id),
      child: BlocListener<ActivateTicketCubit, ActivateTicketState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          if (state.receiveTicketStatus.isSuccess()) {
            context.router.popUntil(
              (route) => route.settings.name == WelcomeLoaderRoute.name,
            );

            // TODO - add translation
            context.showSnackbarMessage('Baw się dobrze! 🎉');
          }
        },
        child: Scaffold(
          appBar: TonightAppBar(title: S().tickets(1)),
          body: SafeArea(
            child: BlocBuilder<ActivateTicketCubit, ActivateTicketState>(
              builder: (context, state) {
                switch (state.getTicketStatus) {
                  case CubitStatus.initial:
                    return const SizedBox.shrink();
                  case CubitStatus.loading:
                    return const Center(child: CircularProgressIndicator());
                  case CubitStatus.failure:
                    return FailureInfo(
                        retryCallback: () => context
                            .read<ActivateTicketCubit>()
                            .listenTicketById(widget.ticket.id));
                  case CubitStatus.success:
                    final ticket = state.ticket.getOrCrash();
                    final secondsLeftForReceiveTicket = ticket.usedAt
                        ?.add(const Duration(minutes: 10))
                        .difference(DateTime.now())
                        .inSeconds;
                    final isTimerVisible =
                        ticket.isActivated && secondsLeftForReceiveTicket! > 0;
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: !ticket.isValid
                          ? const TicketExpiredInfo()
                          : Column(
                              children: [
                                if (isTimerVisible) const SizedBox(height: 10),
                                if (isTimerVisible)
                                  CountdownTimer(
                                    secondsLeft: secondsLeftForReceiveTicket,
                                    onTimerCompleted: () {
                                      context.showSnackbarMessage(
                                        // TODO - add translation
                                        'Czas na wykorzystanie biletu minął',
                                      );
                                      context.router.popUntil(
                                        (route) =>
                                            route.settings.name ==
                                            WelcomeLoaderRoute.name,
                                      );
                                    },
                                    textStyle: context.headlineMedium,
                                  ),
                                if (isTimerVisible) const SizedBox(height: 30),
                                ActivateTicketQuantityInfo(
                                    quantity: ticket.quantity),
                                const SizedBox(height: 30),
                                ActivateTicketClubNameInfo(
                                    clubName: ticket.clubName),
                                const SizedBox(height: 30),
                                ActivateTicketEventNameInfo(
                                  eventName: ticket.eventName,
                                ),
                                const Spacer(),
                                ticket.isActivated &&
                                        secondsLeftForReceiveTicket! > 0
                                    ? const ReceiveTicketButton()
                                    : const ActivateTicketButton(),
                              ],
                            ),
                    );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }
}
