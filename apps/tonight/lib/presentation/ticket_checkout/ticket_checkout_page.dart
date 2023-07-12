import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_email.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_header.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_payment_method.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_promotion_code.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_summary.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_checkout_ticket_card.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_proceed_to_pay_button.dart';
import 'package:translations/translations.dart';

class TicketCheckoutPage extends StatelessWidget {
  final Event event;

  const TicketCheckoutPage({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightOverlay(
      child: BlocProvider(
        create: (_) => getIt<TicketCheckoutBloc>()
          ..add(TicketCheckoutEvent.stateInitialized(event)),
        child: BlocConsumer<TicketCheckoutBloc, TicketCheckoutState>(
          buildWhen: (p, c) => p.initialStatus != c.initialStatus,
          listenWhen: (p, c) =>
              p.proceedingToPaymentStatus != c.proceedingToPaymentStatus ||
              p.snackbarMessage != c.snackbarMessage ||
              p.purchasedTicket != c.purchasedTicket,
          listener: (context, state) {
            state.proceedingToPaymentStatus.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );
            if (state.proceedingToPaymentStatus.isSuccess() &&
                state.purchasedTicket.isSome()) {
              context.replaceRoute(
                TicketPaymentConfirmRoute(
                  ticket: state.purchasedTicket.getOrCrash(),
                ),
              );
            }
          },
          builder: (context, state) {
            switch (state.initialStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.loading:
                return const WaveLoadingIndicator();
              case CubitStatus.failure:
                return FailureInfo(
                  retryCallback: () => context
                      .read<TicketCheckoutBloc>()
                      .add(TicketCheckoutEvent.stateInitialized(event)),
                );
              case CubitStatus.success:
                return GestureDetector(
                  onTap: () => context.unfocus(),
                  child: Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerFloat,
                    floatingActionButton: const TicketProceedToPayButton(),
                    appBar: TonightAppBar(title: S().checkout),
                    body: const SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TicketCheckoutHeader(),
                              SizedBox(height: 20),
                              TicketCheckoutTicketCard(),
                              SizedBox(height: 15),
                              Divider(),
                              SizedBox(height: 15),
                              TicketCheckoutPaymentMethod(),
                              SizedBox(height: 20),
                              TicketCheckoutEmail(),
                              SizedBox(height: 20),
                              TicketCheckoutSummary(),
                              SizedBox(height: 15),
                              Divider(),
                              SizedBox(height: 15),
                              TicketCheckoutPromotionCode(),
                              SizedBox(height: 80),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
