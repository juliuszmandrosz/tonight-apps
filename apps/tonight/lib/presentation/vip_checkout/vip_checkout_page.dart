import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:payments/domain/domain.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_header.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_invoice_checkbox.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_invoice_data.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_payment_method.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_promotion_code.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_summary.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_checkout_ticket_card.dart';
import 'package:tonight/presentation/vip_checkout/widgets/vip_proceed_to_pay_button.dart';
import 'package:translations/raver_translations.dart';

class VipCheckoutPage extends StatelessWidget {
  final Ticket ticket;

  const VipCheckoutPage({required this.ticket, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<VipCheckoutCubit>(
        param1: context.read<TicketListCubit>(),
      )..initData(ticket),
      child: BlocConsumer<VipCheckoutCubit, VipCheckoutState>(
        buildWhen: (previous, current) =>
            previous.initialStatus != current.initialStatus ||
            previous.eventTickets != current.eventTickets ||
            previous.sendInvoice != current.sendInvoice,
        listenWhen: (previous, current) =>
            previous.initialStatus != current.initialStatus ||
            previous.proceedingToPaymentStatus !=
                current.proceedingToPaymentStatus ||
            previous.snackbarMessage != current.snackbarMessage ||
            previous.isVipNoLongerAvailable != current.isVipNoLongerAvailable ||
            previous.paymentFailure != current.paymentFailure,
        listener: (context, state) {
          if (state.proceedingToPaymentStatus.isSuccess() &&
              state.upgradedTicket.isSome()) {
            context.replaceRoute(
              TicketPaymentConfirmRoute(
                ticket: state.upgradedTicket.getOrCrash(),
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

          if (state.isVipNoLongerAvailable) {
            context.popRoute();
          }

          if (state.paymentFailure ==
              some(const UserPaymentFailure.paymentHasAlreadyBeenMade())) {
            context.router.popUntil(
              (route) => route.settings.name == TicketQrRoute.name,
            );
          }
        },
        builder: (context, state) {
          if (state.initialStatus.isInitial()) {
            return const SizedBox.shrink();
          }

          if (state.initialStatus.isFailure()) {
            return FailureInfo(
              retryCallback: () =>
                  context.read<VipCheckoutCubit>().initData(ticket),
            );
          }

          return state.initialStatus.isLoading()
              ? const WaveLoadingIndicator()
              : Scaffold(
                  appBar: TonightAppBar(title: S().checkout),
                  floatingActionButton: const VipProceedToPayButton(),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  body: Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListView(
                      children: [
                        const VipCheckoutHeader(),
                        const SizedBox(height: 20),
                        const VipCheckoutTicketCard(),
                        const SizedBox(height: 15),
                        const Divider(),
                        const SizedBox(height: 15),
                        const VipCheckoutPaymentMethod(),
                        const SizedBox(height: 20),
                        const VipCheckoutSummary(),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        const VipCheckoutPromotionCode(),
                        const SizedBox(height: 20),
                        const VipCheckoutInvoiceCheckbox(),
                        if (state.sendInvoice) const VipCheckoutInvoiceData(),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
