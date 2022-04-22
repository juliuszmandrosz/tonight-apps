import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_header.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_is_vip_switch.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_pay_button.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_promotion_code.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_checkout_ticket_card.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPage extends StatelessWidget {
  final Event event;

  const TicketCheckoutPage({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        appBar: RaverAppBar(title: S().checkout),
        body: BlocProvider(
          create: (context) =>
              getIt<TicketCheckoutCubit>()..initPaymentTicketData(event),
          child: BlocConsumer<TicketCheckoutCubit, TicketCheckoutState>(
            buildWhen: (previous, current) =>
                previous.initialStatus != current.initialStatus,
            listenWhen: (previous, current) =>
                previous.paymentFailureMessage !=
                    current.paymentFailureMessage ||
                previous.proceedingToPaymentStatus !=
                    current.proceedingToPaymentStatus,
            listener: (context, state) {
              if (state.proceedingToPaymentStatus.isSuccess() &&
                  state.ticketId != null) {
                AutoRouter.of(context).replace(
                  TicketPaymentConfirmRoute(ticketId: state.ticketId!),
                );
              }

              state.paymentFailureMessage.fold(
                () {},
                (error) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(error),
                      ),
                    );
                },
              );
            },
            builder: (context, state) {
              return state.initialStatus.isLoading()
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: ListView(
                        children: const [
                          TicketCheckoutHeader(),
                          SizedBox(height: 20),
                          TicketCheckoutTicketCard(),
                          SizedBox(height: 20),
                          TicketCheckoutIsVipSwitch(),
                          TicketCheckoutPromotionCode(),
                          SizedBox(height: 30),
                          TicketCheckoutPayButton(),
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
