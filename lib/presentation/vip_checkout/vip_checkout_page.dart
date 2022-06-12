import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/core/ticket_logo_animation.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_header.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_invoice_checkbox.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_invoice_data.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_promotion_code.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_summary.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_ticket_card.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_proceed_to_pay_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

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
            previous.proceedingToPaymentStatus !=
                current.proceedingToPaymentStatus ||
            previous.snackbarMessage != current.snackbarMessage ||
            previous.isVipNoLongerAvailable != current.isVipNoLongerAvailable,
        listener: (context, state) {
          if (state.proceedingToPaymentStatus.isSuccess() &&
              state.upgradedTicket.isSome()) {
            AutoRouter.of(context).replace(
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
        },
        builder: (context, state) {
          return state.initialStatus.isLoading()
              ? const Center(child: CircularProgressIndicator())
              : LoaderOverlay(
                  overlayWidget: const TicketLogoAnimation(),
                  overlayColor: context.shadowColor,
                  useDefaultLoading: false,
                  child: Scaffold(
                    appBar: RaverAppBar(title: S().checkout),
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
                          const SizedBox(height: 30),
                          const VipCheckoutPromotionCode(),
                          const SizedBox(height: 20),
                          const VipCheckoutInvoiceCheckbox(),
                          if (state.sendInvoice) const VipCheckoutInvoiceData(),
                          const SizedBox(height: 20),
                          const VipCheckoutSummary(),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
