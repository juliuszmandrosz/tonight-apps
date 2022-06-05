import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_header.dart';
import 'package:raver/presentation/vip_checkout/widgets/vip_checkout_promotion_code.dart';
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
    return LoaderOverlay(
      overlayColor: context.shadowColor,
      child: Scaffold(
        appBar: RaverAppBar(title: S().checkout),
        body: BlocProvider(
          create: (_) => getIt<VipCheckoutCubit>()..initData(ticket),
          child: BlocConsumer<VipCheckoutCubit, VipCheckoutState>(
            buildWhen: (previous, current) =>
                previous.initialStatus != current.initialStatus ||
                previous.eventTickets != current.eventTickets,
            listenWhen: (previous, current) =>
                previous.proceedingToPaymentStatus !=
                    current.proceedingToPaymentStatus ||
                previous.snackbarMessage != current.snackbarMessage ||
                previous.isVipNoLongerAvailable !=
                    current.isVipNoLongerAvailable,
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
                AutoRouter.of(context).replaceAll([
                  const NavigatorRoute(),
                  TicketQrRoute(ticket: state.ticket.getOrCrash()),
                ]);
              }
            },
            builder: (context, state) {
              return state.initialStatus.isLoading()
                  ? const Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: const [
                                VipCheckoutHeader(),
                                SizedBox(height: 20),
                                VipCheckoutTicketCard(),
                                SizedBox(height: 30),
                                VipCheckoutPromotionCode(),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          const VipProceedToPayButton(),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
