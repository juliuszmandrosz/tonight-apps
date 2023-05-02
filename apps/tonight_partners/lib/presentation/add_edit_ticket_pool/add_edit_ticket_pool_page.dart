import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/save_ticket_pool_button.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/ticket_pool_price_input.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/ticket_pool_quantity_input.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/vip_availability_switch.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/vip_info.dart';
import 'package:tonight_partners/presentation/add_edit_ticket_pool/widgets/vip_price_input.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:translations/raver_translations.dart';

class AddEditTicketPoolPage extends StatelessWidget {
  final List<TicketPool> currentTicketPools;
  final Option<TicketPool> editingTicketPool;
  final BuildContext blocContext;

  const AddEditTicketPoolPage({
    required this.currentTicketPools,
    required this.editingTicketPool,
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<ClubInfoCubit>(),
      child: BlocProvider(
        create: (context) {
          final cubit = getIt<AddEditTicketPoolCubit>(
            param1: context.read<ClubInfoCubit>(),
          );

          editingTicketPool.fold(
            () {},
            (pool) => cubit.addEditingTicketPoolToState(pool),
          );

          cubit.addCurrentTicketPoolsToState(currentTicketPools);

          cubit.isVipEnabledChanged(
            editingTicketPool.fold(
              () => false,
              (pool) => pool.isVipEnabled,
            ),
          );

          return cubit;
        },
        child: BlocListener<AddEditTicketPoolCubit, AddEditTicketPoolState>(
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage ||
              previous.status != current.status,
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) => context.showSnackbarMessage(error),
            );

            if (state.status.isSubmissionSuccess) {
              context.popRoute<TicketPool>(state.result.getOrCrash());
            }
          },
          child: Scaffold(
            appBar: TonightPartnersAppBar(
              title: editingTicketPool.fold(
                () => S().addTicketPool,
                (_) => S().editTicketPool,
              ),
            ),
            floatingActionButton: const SaveTicketPoolButton(),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child:
                  BlocBuilder<AddEditTicketPoolCubit, AddEditTicketPoolState>(
                buildWhen: (previous, current) =>
                    previous.isVipEnabled != current.isVipEnabled,
                builder: (context, state) {
                  return ListView(
                    children: [
                      const TicketPoolQuantityInput(),
                      if (editingTicketPool.fold(
                          () => true, (pool) => pool.ticketsSold == 0))
                        const TicketPoolPriceInput(),
                      const SizedBox(height: 20),
                      const VipAvailabilitySwitch(),
                      const SizedBox(height: 20),
                      if (!state.isVipEnabled) const VipInfo(),
                      if (!state.isVipEnabled) const SizedBox(height: 20),
                      if (state.isVipEnabled) const VipPriceInput()
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
