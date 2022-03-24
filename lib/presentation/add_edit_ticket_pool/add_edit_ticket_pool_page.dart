import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/widgets/save_ticket_pool_button.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/widgets/ticket_pool_price_input.dart';
import 'package:raver_partners/presentation/add_edit_ticket_pool/widgets/ticket_pool_quantity_input.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class AddEditTicketPoolPage extends StatelessWidget {
  final List<TicketPool> currentTicketPools;
  final Option<TicketPool> editingTicketPool;

  const AddEditTicketPoolPage({
    required this.currentTicketPools,
    required this.editingTicketPool,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<AddEditTicketPoolCubit>(
          param1: context.read<ClubInfoCubit>(),
        );

        editingTicketPool.fold(
          () {},
          (pool) => cubit.addEditingTicketPoolToState(pool),
        );

        cubit.addCurrentTicketPoolsToState(currentTicketPools);

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
            AutoRouter.of(context).pop<TicketPool>(state.result.getOrCrash());
          }
        },
        child: Scaffold(
          appBar: RaverPartnersAppBar(
            title: editingTicketPool.fold(
              () => S().addTicketPool,
              (_) => S().editTicketPool,
            ),
          ),
          floatingActionButton: const SaveTicketPoolButton(),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const TicketPoolQuantityInput(),
                const SizedBox(height: 20),
                if (editingTicketPool.fold(
                    () => true, (pool) => pool.ticketsSold == 0))
                  const TicketPoolPriceInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
