import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_header.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_invoice_checkbox.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_invoice_data.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_is_vip_switch.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_pay_section.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_payment_method.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_promotion_code.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_summary.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_ticket_card.dart';
import 'package:raver/presentation/ticket_checkout/widgets/vip_not_enabled_info.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPage extends StatefulWidget {
  final Event event;

  const TicketCheckoutPage({required this.event, Key? key}) : super(key: key);

  @override
  State<TicketCheckoutPage> createState() => _TicketCheckoutPageState();
}

class _TicketCheckoutPageState extends State<TicketCheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayWidget: const TicketLogoAnimation(),
      overlayColor: context.shadowColor,
      useDefaultLoading: false,
      overlayOpacity: .7,
      child: BlocProvider(
        create: (_) => getIt<TicketCheckoutCubit>(
          param1: context.read<TicketListCubit>(),
        )..initData(
            widget.event,
          ),
        child: BlocConsumer<TicketCheckoutCubit, TicketCheckoutState>(
          buildWhen: (previous, current) =>
              previous.initialStatus != current.initialStatus ||
              previous.eventTickets != current.eventTickets ||
              previous.sendInvoice != current.sendInvoice,
          listenWhen: (previous, current) =>
              previous.initialStatus != current.initialStatus ||
              previous.proceedingToPaymentStatus !=
                  current.proceedingToPaymentStatus ||
              previous.snackbarMessage != current.snackbarMessage ||
              previous.paymentFailure != current.paymentFailure,
          listener: (context, state) {
            if (state.initialStatus.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () => context
                      .read<TicketCheckoutCubit>()
                      .initData(widget.event),
                ),
              );
            }

            if (state.proceedingToPaymentStatus.isSuccess() &&
                state.purchasedTicket.isSome()) {
              context.replaceRoute(
                TicketPaymentConfirmRoute(
                  ticket: state.purchasedTicket.getOrCrash(),
                ),
              );
            }

            state.proceedingToPaymentStatus.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();

            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            if (state.paymentFailure ==
                dartz.some(
                    const UserPaymentFailure.paymentHasAlreadyBeenMade())) {
              context.router.popUntil(
                (route) => route.settings.name == EventDetailsRoute.name,
              );
            }
          },
          builder: (context, state) {
            if (state.initialStatus.isInitial() ||
                state.initialStatus.isFailure()) {
              return Container();
            }
            return state.initialStatus.isLoading()
                ? const TicketLogoAnimation()
                : Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerFloat,
                    floatingActionButton: const TicketCheckoutPaySection(),
                    appBar: RaverAppBar(title: S().checkout),
                    body: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          const TicketCheckoutHeader(),
                          const SizedBox(height: 20),
                          const TicketCheckoutTicketCard(),
                          const SizedBox(height: 30),
                          if (_checkIfVipIsNotEnabled(state))
                            const VipNotEnabledInfo(),
                          if (_checkIfVipSwitchIsVisible(state))
                            const TicketCheckoutIsVipSwitch(),
                          const Divider(),
                          const SizedBox(height: 10),
                          const TicketCheckoutPaymentMethod(),
                          const SizedBox(height: 20),
                          const TicketCheckoutSummary(),
                          const SizedBox(height: 10),
                          const Divider(),
                          const SizedBox(height: 10),
                          if (!state.eventTickets.getOrCrash().isSoldOut)
                            const TicketCheckoutPromotionCode(),
                          const SizedBox(height: 20),
                          const TicketCheckoutInvoiceCheckbox(),
                          if (state.sendInvoice)
                            const TicketCheckoutInvoiceData(),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }

  bool _checkIfVipSwitchIsVisible(TicketCheckoutState state) {
    final eventTickets = state.eventTickets.getOrCrash();
    if (eventTickets.isSaleOnlyAtGate) return false;
    return !eventTickets.isSoldOut &&
        eventTickets.getCurrentPool()!.isVipEnabled;
  }

  bool _checkIfVipIsNotEnabled(TicketCheckoutState state) {
    final eventTickets = state.eventTickets.getOrCrash();
    if (eventTickets.isSaleOnlyAtGate) return false;
    return !eventTickets.isSoldOut &&
        !eventTickets.getCurrentPool()!.isVipEnabled;
  }
}
